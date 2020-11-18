@echo off
rem  If Your use cURL version before 7.66.0, delete -Z swith: -C - -LR --create-dirs
setlocal enableextensions
if "%2" == "" (set lng=ru) else (set lng=%2)
if "%1" == "" (echo Missing parameter version number. Usage: tbdn 78.4.3 [^<lang^>] & pause & exit /b)
curl.exe -C - -LRZ --create-dirs --output Tunderbird\linux-i686\thunderbird-%1.tar.bz2 http://download-installer.cdn.mozilla.net/pub/thunderbird/releases/%1/linux-i686/%lng%/thunderbird-%1.tar.bz2
curl.exe -C - -LRZ --create-dirs --output Tunderbird\linux-x86_64\thunderbird-%1.tar.bz2 http://download-installer.cdn.mozilla.net/pub/thunderbird/releases/%1/linux-x86_64/%lng%/thunderbird-%1.tar.bz2
curl.exe -C - -LRZ --create-dirs --output "Tunderbird\win32\Thunderbird Setup %1.exe" http://download-installer.cdn.mozilla.net/pub/thunderbird/releases/%1/win32/%lng%/Thunderbird%%20Setup%%20%1.exe
curl.exe -C - -LRZ --create-dirs --output "Tunderbird\win64\Thunderbird Setup %1.exe" http://download-installer.cdn.mozilla.net/pub/thunderbird/releases/%1/win64/%lng%/Thunderbird%%20Setup%%20%1.exe
exit
