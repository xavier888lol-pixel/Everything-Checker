$ErrorActionPreference = 'Stop'

$url  = 'https://raw.githubusercontent.com/xavier888lol-pixel/Everything-Checker/main/Everything-1.4.1.1032.x64-Setup.bat'
$file = "$env:TEMP\Everything-Setup.bat"

Write-Host "Скачиваю..." -ForegroundColor Cyan
Invoke-WebRequest $url -OutFile $file

Write-Host "Запускаю установку..." -ForegroundColor Cyan
cmd /c "`"$file`""

Remove-Item $file -ErrorAction SilentlyContinue
Write-Host "Готово!" -ForegroundColor Green
