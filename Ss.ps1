﻿﻿function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if (!(Test-Admin)) {
    Write-Warning "Por favor, ejecuta este script como administrador."
    Start-Sleep 10
    Exit
}

Clear-Host


Write-Host @"


  ██▀███   ▒█████  ▓█████▄     ▄▄▄▄ ▓██   ██▓ ██▓███   ▄▄▄        ██████   ██████ 
▓██ ▒ ██▒▒██▒  ██▒▒██▀ ██▌   ▓█████▄▒██  ██▒▓██░  ██▒▒████▄    ▒██    ▒ ▒██    ▒ 
▓██ ░▄█ ▒▒██░  ██▒░██   █▌   ▒██▒ ▄██▒██ ██░▓██░ ██▓▒▒██  ▀█▄  ░ ▓██▄   ░ ▓██▄   
▒██▀▀█▄  ▒██   ██░░▓█▄   ▌   ▒██░█▀  ░ ▐██▓░▒██▄█▓▒ ▒░██▄▄▄▄██   ▒   ██▒  ▒   ██▒
░██▓ ▒██▒░ ████▓▒░░▒████▓    ░▓█  ▀█▓░ ██▒▓░▒██▒ ░  ░ ▓█   ▓██▒▒██████▒▒▒██████▒▒
░ ▒▓ ░▒▓░░ ▒░▒░▒░  ▒▒▓  ▒    ░▒▓███▀▒ ██▒▒▒ ▒▓▒░ ░  ░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░
  ░▒ ░ ▒░  ░ ▒ ▒░  ░ ▒  ▒    ▒░▒   ░▓██ ░▒░ ░▒ ░       ▒   ▒▒ ░░ ░▒  ░ ░░ ░▒  ░ ░
  ░░   ░ ░ ░ ░ ▒   ░ ░  ░     ░    ░▒ ▒ ░░  ░░         ░   ▒   ░  ░  ░  ░  ░  ░  
   ░         ░ ░     ░        ░     ░ ░                    ░  ░      ░        ░  
                   ░               ░░ ░                                          



"@ -ForegroundColor DarkMagenta


Write-Host "Rod Bypassing" -ForegroundColor DarkMagenta
Write-Host ""
Write-Host ""
Write-Host "run this script before the ScreenShare" -ForegroundColor DarkMagenta
Write-Host ""
Write-Host ""

Start-Sleep -Seconds 3

Clear-Host ""


Write-Host @"


 ▄▄▄▄ ▓██   ██▓ ██▓███   ▄▄▄        ██████   ██████  ██▓ ███▄    █   ▄████ 
▓█████▄▒██  ██▒▓██░  ██▒▒████▄    ▒██    ▒ ▒██    ▒ ▓██▒ ██ ▀█   █  ██▒ ▀█▒
▒██▒ ▄██▒██ ██░▓██░ ██▓▒▒██  ▀█▄  ░ ▓██▄   ░ ▓██▄   ▒██▒▓██  ▀█ ██▒▒██░▄▄▄░
▒██░█▀  ░ ▐██▓░▒██▄█▓▒ ▒░██▄▄▄▄██   ▒   ██▒  ▒   ██▒░██░▓██▒  ▐▌██▒░▓█  ██▓
░▓█  ▀█▓░ ██▒▓░▒██▒ ░  ░ ▓█   ▓██▒▒██████▒▒▒██████▒▒░██░▒██░   ▓██░░▒▓███▀▒
░▒▓███▀▒ ██▒▒▒ ▒▓▒░ ░  ░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░░▓  ░ ▒░   ▒ ▒  ░▒   ▒ 
▒░▒   ░▓██ ░▒░ ░▒ ░       ▒   ▒▒ ░░ ░▒  ░ ░░ ░▒  ░ ░ ▒ ░░ ░░   ░ ▒░  ░   ░ 
 ░    ░▒ ▒ ░░  ░░         ░   ▒   ░  ░  ░  ░  ░  ░   ▒ ░   ░   ░ ░ ░ ░   ░ 
 ░     ░ ░                    ░  ░      ░        ░   ░           ░       ░ 
      ░░ ░                                                                 

                                                     
"@ -ForegroundColor DarkMagenta

function LoadingAnimation {
    $barLength = 20
    for ($i = 0; $i -le $barLength; $i++) {
        $bar = '[' + 'o' * $i + ' ' * ($barLength - $i) + ']'
        Write-Host -NoNewline "`r$bar"
        Start-Sleep -Milliseconds 100
    }
    Write-Host ""
    Write-Host ""
    Write-Host "Loaded"
    Write-Host ""
}

LoadingAnimation


Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing



function ClearLogs {
    Write-Host "Clear Logs:" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "1) Journal"
    Write-Host "2) Regedit"
    

    $opcion = Read-Host "Select Option"
    
    switch ($opcion) {
        "1" {
           
            Write-Host "Deleting Journal..." -ForegroundColor DarkRed
            cmd /c "fsutil usn deletejournal /d c:"
            Write-Host "Journal deleted" -ForegroundColor DarkRed
        }

        "2" {
          
          Write-host "Clear Regedit Logs...." -ForegroundColor DarkRed
          cmd /c "reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f /va  & reg delete HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f /va & reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\dll /f /va & reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\exe /f /va & reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\exe /f /va & reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs /f /va & reg delete HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f /va & reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery /f /va "
    }
}
}

function HideRecord {

Add-Type @"
using System;
using System.Runtime.InteropServices;

public class WindowHelper {
    [DllImport("user32.dll")]
    [return: MarshalAs(UnmanagedType.Bool)]
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);

    [DllImport("user32.dll", SetLastError = true)]
    public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);

    [DllImport("user32.dll")]
    public static extern bool EnumWindows(EnumWindowsProc lpEnumFunc, IntPtr lParam);

    public delegate bool EnumWindowsProc(IntPtr hWnd, IntPtr lParam);

    public static void HideWindowByTitle(string title) {
        EnumWindows((hWnd, lParam) => {
            const int SW_HIDE = 0;
            const int nChars = 256;
            System.Text.StringBuilder Buff = new System.Text.StringBuilder(nChars);
            GetWindowText(hWnd, Buff, nChars);
            if (Buff.ToString().Contains(title)) {
                ShowWindow(hWnd, SW_HIDE);
            }
            return true;
        }, IntPtr.Zero);
    }

    public static void ShowWindowByTitle(string title) {
        EnumWindows((hWnd, lParam) => {
            const int SW_SHOW = 5;
            const int nChars = 256;
            System.Text.StringBuilder Buff = new System.Text.StringBuilder(nChars);
            GetWindowText(hWnd, Buff, nChars);
            if (Buff.ToString().Contains(title)) {
                ShowWindow(hWnd, SW_SHOW);
            }
            return true;
        }, IntPtr.Zero);
    }

    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    private static extern int GetWindowText(IntPtr hWnd, System.Text.StringBuilder lpString, int nMaxCount);
}
"@


$windowName = "Google Chrome"


[WindowHelper]::HideWindowByTitle($windowName)
Write-Host "Google Hide !."






function Hide-ExtensionBar {

    $windows = Get-Process | Where-Object { $_.MainWindowTitle -ne "" }

    foreach ($window in $windows) {


            try {
                $hwnd = $window.MainWindowHandle
                $null = [void][System.Runtime.Interopservices.Marshal]::GetDelegateForFunctionPointer([System.Runtime.Interopservices.Marshal]::GetDelegateForFunctionPointer([System.IntPtr]::Zero, [System.IntPtr]), [System.Type])::ShowWindow($hwnd, 0)  # 0 = ocultar
            } catch {
                Write-Host "Error with extension."
            }
        }
    }
}


function DateModificator {

$path = Read-Host "Cheat Path:"

if (Test-Path $path) {
    $newDate = New-Object DateTime(2023, 2, 14, 12, 0, 0)
    (Get-Item $path).LastWriteTime = $newDate
    Write-Host "Correctly Modify new date = $newDate"
} else {
    Write-Host "Incorrect Path." -ForegroundColor DarkRed
}

}

function StopServices {
    Write-Host "Select Option:" -ForegroundColor DarkRed
    Write-Host ""
    Write-Host "1) Bam" -ForegroundColor DarkRed
    Write-Host "2) DPS" -ForegroundColor DarkRed
    Write-Host "3) DiagTrack" -ForegroundColor DarkRed
    Write-Host "4) Sysmain" -ForegroundColor DarkRed
    Write-Host ""
   
    $opcion = Read-Host "Select"
    
    switch ($opcion) {
        "1" { cmd /c "sc stop Bam"; Write-Host "'Bam' Stopped." -ForegroundColor DarkRed }
        "2" { cmd /c "sc stop Dps"; Write-Host "'DPS Stopped" -ForegroundColor DarkRed }
        "3" { cmd /c "sc stop Diagtrack"; Write-Host "DiagTrack' Stopped" -ForegroundColor DarkRed }
        "4" { cmd /c "sc stop Sysmain"; Write-Host "'Sysmain' Stopped" -ForegroundColor DarkRed }
        default { Write-Host "Opción no válida." -ForegroundColor DarkRed }
        
        
    }
}

function ChangeExtension {


$path = Read-Host "Enter the path file"

if (-Not (Test-Path $path)) {
    Write-Host "unknown file. Verify the path."
    exit
}

$newExtension = Read-Host "enter new extension (Opciones: Exe, mp4, PDF, DLL, Png, Ini, Jar)"

switch ($newExtension.ToLower()) {
    'exe' { $newExtension = 'exe' }
    'mp4' { $newExtension = 'mp4' }
    'pdf' { $newExtension = 'pdf' }
    'dll' { $newExtension = 'dll' }
    'png' { $newExtension = 'png' }
    'ini' { $newExtension = 'ini' }
    'Jar' {$newExtension = 'Jar'}
    default {
        Write-Host "Invalid extension. select: Exe, mp4, PDF, DLL. , INI, Jar"
        exit
    }
}

$filenameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($path)
$directory = [System.IO.Path]::GetDirectoryName($path)
$newPath = Join-Path -Path $directory -ChildPath "$filenameWithoutExtension.$newExtension"

Rename-Item -Path $path -NewName $newPath
Write-Host "Extension Changed !: $newPath"



}

function ExecuteCheats {
    Write-Host "Execute Cheats:" -ForegroundColor DarkRed
    Write-Host ""
    Write-Host "1) Start Jar"
    Write-Host "2) Start exe"
    Write-Host "3) Start dll"
    Write-Host ""
    
    $opcion = Read-Host "Select"
    $path = Read-Host "Cheat Path"


    switch ($opcion) {
        "1" { cmd /c "java -jar $path" }
        "2" { cmd /c "start $path /c vschost.exe"; Write-Host "Starting exe: $path" -ForegroundColor DarkRed }
        "3" { cmd.exe /c "regsvr32 $path"  "Starting dll: $path" -ForegroundColor DarkRed }
        default { Write-Host "Incorrect Option." -ForegroundColor DarkRed }
    }

}


$line = "=" * 29
$separator = "-" * 27

$cuadro = @"
____________________________________________
|       Select:                             |
|                                           |
|  1) Clear-Logs        2) Execute          |
|  3) Stop-Services     4) Hide-Record      |
|  5) Date-Modificator  6) Extension-Modify |                            
|___________________________________________|
"@


Write-Host $cuadro

$opcion = Read-Host "Select Category"
switch ($opcion) {
    "1" { ClearLogs }
    "2" { ExecuteCheats }
    "3" { StopServices }
    "4" { HideRecord }
    "5" { DateModificator }
    "6" { ChangeExtension }
    default { Write-Host "Incorrectly Option" -ForegroundColor DarkRed }
}
