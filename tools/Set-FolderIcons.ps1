<#
    Set-FolderIcons.ps1

    Gives each folder the icon of the picture that shares its name, and optionally
    blanks the folder labels so only the icons show.

    WHERE TO PUT IT
      Save this file as  Set-FolderIcons.ps1  anywhere. The Desktop is fine.

    HOW TO RUN IT
      Open PowerShell, then:

        cd ~\Desktop
        .\Set-FolderIcons.ps1                          <- preview only, changes nothing
        .\Set-FolderIcons.ps1 -Apply                   <- sets the icons
        .\Set-FolderIcons.ps1 -Apply -BlankNames       <- sets icons AND hides the labels
        .\Set-FolderIcons.ps1 -Undo                    <- puts everything back

    If PowerShell refuses to run it, run this once, then try again:

        Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

    IT ALWAYS PREVIEWS FIRST. Nothing changes until you add -Apply.
#>

[CmdletBinding()]
param(
    [string] $Path = "C:\Users\serei\Downloads\compressed",
    [switch] $Apply,
    [switch] $Undo,
    [switch] $BlankNames
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing

$LogFile    = Join-Path $Path '.folder-icons-log.json'
$ImageExts  = @('.png', '.jpg', '.jpeg', '.bmp', '.gif', '.webp')
$Nbsp       = [char]0x00A0   # looks blank in Explorer, still a legal folder name

function Write-Step { param($m) Write-Host "  $m" }
function Write-Head { param($m) Write-Host "`n$m" -ForegroundColor Cyan }
function Write-Warn { param($m) Write-Host "  ! $m" -ForegroundColor Yellow }

if (-not (Test-Path -LiteralPath $Path)) {
    Write-Host "That folder does not exist: $Path" -ForegroundColor Red
    Write-Host "Check the path and run again."
    exit 1
}

# ---------------------------------------------------------------- undo

if ($Undo) {
    Write-Head "Undoing changes in $Path"

    if (-not (Test-Path -LiteralPath $LogFile)) {
        Write-Warn "No log file found, so there is nothing recorded to undo."
        Write-Warn "Looked for: $LogFile"
        exit 1
    }

    $log = Get-Content -LiteralPath $LogFile -Raw | ConvertFrom-Json
    $restored = 0

    foreach ($entry in $log.folders) {
        # The folder may have been renamed to a blank name, so find it by its current path.
        $current = $entry.currentPath
        if (-not (Test-Path -LiteralPath $current)) {
            Write-Warn "Gone, skipping: $($entry.originalName)"
            continue
        }

        # Strip the customisation files.
        foreach ($f in @('desktop.ini', 'folder.ico')) {
            $p = Join-Path $current $f
            if (Test-Path -LiteralPath $p) {
                (Get-Item -LiteralPath $p -Force).Attributes = 'Normal'
                Remove-Item -LiteralPath $p -Force
            }
        }

        # Drop the ReadOnly/System flag that made desktop.ini take effect.
        $dir = Get-Item -LiteralPath $current -Force
        $dir.Attributes = $dir.Attributes -band -bnot [IO.FileAttributes]::ReadOnly
        $dir.Attributes = $dir.Attributes -band -bnot [IO.FileAttributes]::System

        # Put the name back if we changed it.
        $wantPath = Join-Path $Path $entry.originalName
        if ($current -ne $wantPath) {
            if (Test-Path -LiteralPath $wantPath) {
                Write-Warn "Cannot rename back, something already sits at $($entry.originalName)"
            } else {
                Rename-Item -LiteralPath $current -NewName $entry.originalName -Force
            }
        }

        Write-Step "restored $($entry.originalName)"
        $restored++
    }

    Remove-Item -LiteralPath $LogFile -Force
    Write-Host "`nDone. $restored folder(s) put back." -ForegroundColor Green
    Write-Host "If Explorer still shows the old icons, press F5, or restart Explorer."
    exit 0
}

# ---------------------------------------------------------------- ico builder

# Windows folder icons must be .ico files. A .png will not work, so each picture
# gets wrapped into an .ico here.
#
# This writes a Vista-era PNG-compressed icon: a 6 byte header, one 16 byte
# directory entry, then the PNG bytes themselves. That keeps the full resolution.
# The older route, Bitmap.GetHicon, would hard-limit every icon to 32x32 and look
# soft on a modern display.
function New-IcoFromImage {
    param(
        [Parameter(Mandatory)] [string] $ImagePath,
        [Parameter(Mandatory)] [string] $OutIcoPath
    )

    $src = [System.Drawing.Image]::FromFile($ImagePath)
    try {
        # Square it off on a transparent canvas so nothing gets stretched.
        $side   = 256
        $canvas = New-Object System.Drawing.Bitmap($side, $side)
        $g      = [System.Drawing.Graphics]::FromImage($canvas)
        try {
            $g.InterpolationMode  = 'HighQualityBicubic'
            $g.PixelOffsetMode    = 'HighQuality'
            $g.SmoothingMode      = 'HighQuality'
            $g.Clear([System.Drawing.Color]::Transparent)

            $scale = [Math]::Min($side / $src.Width, $side / $src.Height)
            $w     = [int]($src.Width  * $scale)
            $h     = [int]($src.Height * $scale)
            $x     = [int](($side - $w) / 2)
            $y     = [int](($side - $h) / 2)
            $g.DrawImage($src, $x, $y, $w, $h)
        } finally {
            $g.Dispose()
        }

        $ms = New-Object System.IO.MemoryStream
        try {
            $canvas.Save($ms, [System.Drawing.Imaging.ImageFormat]::Png)
            $png = $ms.ToArray()
        } finally {
            $ms.Dispose()
            $canvas.Dispose()
        }

        $fs = [System.IO.File]::Create($OutIcoPath)
        $bw = New-Object System.IO.BinaryWriter($fs)
        try {
            # ICONDIR
            $bw.Write([UInt16]0)   # reserved
            $bw.Write([UInt16]1)   # type 1 = icon
            $bw.Write([UInt16]1)   # one image in this file

            # ICONDIRENTRY. 0 in the size bytes means 256.
            $bw.Write([Byte]0)              # width
            $bw.Write([Byte]0)              # height
            $bw.Write([Byte]0)              # palette colours
            $bw.Write([Byte]0)              # reserved
            $bw.Write([UInt16]1)            # colour planes
            $bw.Write([UInt16]32)           # bits per pixel
            $bw.Write([UInt32]$png.Length)  # size of the PNG
            $bw.Write([UInt32]22)           # where the PNG starts: 6 + 16
            $bw.Write($png)
        } finally {
            $bw.Dispose()
            $fs.Dispose()
        }
    } finally {
        $src.Dispose()
    }
}

# ---------------------------------------------------------------- pair up

Write-Head "Looking in $Path"

$folders = Get-ChildItem -LiteralPath $Path -Directory -Force |
           Where-Object { $_.Name -ne '.' -and $_.Name -ne '..' }

$images = Get-ChildItem -LiteralPath $Path -File -Force |
          Where-Object { $ImageExts -contains $_.Extension.ToLower() }

Write-Step "$($folders.Count) folder(s), $($images.Count) picture(s)"

# Match on the name with spaces, dashes, underscores and case ignored, so
# "Claude Code" finds claude-code.png and "Recycling Bin" finds recycling_bin.jpg.
function Normalize { param($s) ($s -replace '[\s\-_]', '').ToLower() }

$imageByName = @{}
foreach ($img in $images) {
    $key = Normalize $img.BaseName
    if (-not $imageByName.ContainsKey($key)) { $imageByName[$key] = $img }
}

$pairs   = @()
$noMatch = @()

foreach ($f in $folders) {
    $key = Normalize $f.Name
    if ($imageByName.ContainsKey($key)) {
        $pairs += [pscustomobject]@{ Folder = $f; Image = $imageByName[$key] }
    } else {
        $noMatch += $f
    }
}

Write-Head "Will set an icon on $($pairs.Count) folder(s)"
foreach ($p in $pairs) {
    Write-Step "$($p.Folder.Name)  <-  $($p.Image.Name)"
}

if ($noMatch.Count -gt 0) {
    Write-Head "No matching picture, these are left alone"
    foreach ($f in $noMatch) { Write-Step $f.Name }
}

if ($BlankNames) {
    Write-Head "Labels will be blanked on the $($pairs.Count) folder(s) above"
    Write-Warn "Renaming breaks shortcuts and pinned links that point at these folders."
    Write-Warn "-Undo puts the names back."
}

if (-not $Apply) {
    Write-Host "`nPreview only. Nothing was changed." -ForegroundColor Yellow
    Write-Host "Run it again with -Apply to do it:" -ForegroundColor Yellow
    Write-Host "  .\Set-FolderIcons.ps1 -Apply$(if($BlankNames){' -BlankNames'})"
    exit 0
}

if ($pairs.Count -eq 0) {
    Write-Host "`nNothing to do. No folder had a picture with a matching name." -ForegroundColor Yellow
    exit 0
}

# ---------------------------------------------------------------- apply

Write-Head "Applying"

$log = @{ created = (Get-Date).ToString('o'); path = $Path; folders = @() }
$done = 0
$blankIndex = 0

foreach ($p in $pairs) {
    $folder = $p.Folder
    $record = [ordered]@{
        originalName = $folder.Name
        currentPath  = $folder.FullName
        image        = $p.Image.Name
    }

    try {
        $icoPath = Join-Path $folder.FullName 'folder.ico'
        if (Test-Path -LiteralPath $icoPath) {
            (Get-Item -LiteralPath $icoPath -Force).Attributes = 'Normal'
        }
        New-IcoFromImage -ImagePath $p.Image.FullName -OutIcoPath $icoPath

        # desktop.ini is what Explorer actually reads.
        $iniPath = Join-Path $folder.FullName 'desktop.ini'
        if (Test-Path -LiteralPath $iniPath) {
            (Get-Item -LiteralPath $iniPath -Force).Attributes = 'Normal'
        }
        $ini = @(
            '[.ShellClassInfo]',
            'IconResource=folder.ico,0',
            'IconFile=folder.ico',
            'IconIndex=0',
            '[ViewState]',
            'Mode=',
            'Vid=',
            'FolderType=Generic'
        ) -join "`r`n"
        # ASCII keeps Explorer happy; a BOM here makes it ignore the file.
        [System.IO.File]::WriteAllText($iniPath, $ini, [System.Text.Encoding]::ASCII)

        # Hide the two helper files so the folder still looks clean inside.
        (Get-Item -LiteralPath $iniPath -Force).Attributes = 'Hidden, System'
        (Get-Item -LiteralPath $icoPath -Force).Attributes = 'Hidden, System'

        # Explorer only honours desktop.ini when the folder is ReadOnly or System.
        $dir = Get-Item -LiteralPath $folder.FullName -Force
        $dir.Attributes = $dir.Attributes -bor [IO.FileAttributes]::ReadOnly

        if ($BlankNames) {
            # Every folder in one directory needs a distinct name, so each gets a
            # different count of non-breaking spaces. All of them read as blank.
            $blankIndex++
            $newName = [string]::new($Nbsp, $blankIndex)
            $target  = Join-Path $Path $newName
            if (Test-Path -LiteralPath $target) {
                Write-Warn "Skipped blanking $($folder.Name), that blank name is taken"
            } else {
                Rename-Item -LiteralPath $folder.FullName -NewName $newName -Force
                $record.currentPath = $target
                $record.blankName   = $newName
            }
        }

        Write-Step "done: $($record.originalName)"
        $log.folders += $record
        $done++
    }
    catch {
        Write-Warn "Failed on $($folder.Name): $($_.Exception.Message)"
    }
}

if (Test-Path -LiteralPath $LogFile) {
    (Get-Item -LiteralPath $LogFile -Force).Attributes = 'Normal'
}
$log | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $LogFile -Encoding UTF8
(Get-Item -LiteralPath $LogFile -Force).Attributes = 'Hidden'

Write-Host "`n$done folder(s) updated." -ForegroundColor Green
Write-Host "Undo any time:  .\Set-FolderIcons.ps1 -Undo"

Write-Head "Refreshing Explorer so the icons show"
try {
    Stop-Process -Name explorer -Force -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 2
    if (-not (Get-Process -Name explorer -ErrorAction SilentlyContinue)) {
        Start-Process explorer.exe
    }
    Write-Step "Explorer restarted"
} catch {
    Write-Warn "Could not restart Explorer. Log out and back in, or press F5."
}
