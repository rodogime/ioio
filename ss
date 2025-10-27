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



"@ -ForegroundColor Blue


Write-Host "rod Bypassing" -ForegroundColor Blue
Write-Host ""
Write-Host ""
Write-Host "run this script before the ScreenShare" -ForegroundColor Blue
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

                                                     
"@ -ForegroundColor Blue

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
