@echo off
setlocal

set "ROOT=%~dp0"
set "ROOT=%ROOT:~0,-1%"
set "TOKEN=@SHOW_ROOT@"

echo Repo root detected:
echo %ROOT%
echo.

powershell -NoProfile -Command "$root='%ROOT%'; $token='%TOKEN%'; Get-ChildItem -Recurse -File -Include *.qxw,*.qxf,*.xml | ForEach-Object { $c=Get-Content $_.FullName -Raw; $n=$c -replace [regex]::Escape($token),$root; if($n -ne $c){ Write-Host ('Restored: '+$_.FullName); Set-Content $_.FullName $n -NoNewline } }"

echo Finished restoring paths.
