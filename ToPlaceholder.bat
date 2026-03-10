@echo off
setlocal

set "ROOT=%~dp0"
set "ROOT=%ROOT:~0,-1%"
set "TOKEN=@SHOW_ROOT@"

echo Repo root detected:
echo %ROOT%
echo.

powershell -NoProfile -Command "$root='%ROOT%'; $token='%TOKEN%'; $rootRegex=[regex]::Escape($root) -replace '\\\\','[\\\\/]'; Get-ChildItem -Recurse -File -Include *.qxw,*.qxf,*.xml | ForEach-Object { $c=Get-Content $_.FullName -Raw; $n=$c -replace $rootRegex,$token; if($n -ne $c){ Write-Host ('Converted: '+$_.FullName); Set-Content $_.FullName $n -NoNewline } }"

echo Finished converting paths.
