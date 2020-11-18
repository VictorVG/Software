@echo off
rem  If Your use cURL version before 7.66.0, delete -Z swith: -C - -LR --create-dirs
setlocal enableextensions
if "%2" == "" (set lng=ru) else (set lng=%2)
if "%1" == "" (echo Missing parameter version number. &echo Usage: ffdn 81.0.2 [^<lang^>] or ffdn 78.5.0esr [^<lang^>] & pause & exit /b)
curl.exe -C - -LRZ --create-dirs --output FireFox\linux-i686\firefox-%1.tar.bz2 http://download-installer.cdn.mozilla.net/pub/firefox/releases/%1/linux-i686/%lng%/firefox-%1.tar.bz2
curl.exe -C - -LRZ --create-dirs --output FireFox\linux-x86_64\firefox-%1.tar.bz2 http://download-installer.cdn.mozilla.net/pub/firefox/releases/%1/linux-x86_64/%lng%/firefox-%1.tar.bz2
curl.exe -C - -LRZ --create-dirs --output "FireFox\win32\Firefox Setup %1.exe" http://download-installer.cdn.mozilla.net/pub/firefox/releases/%1/win32/%lng%/Firefox%%20Setup%%20%1.exe
curl.exe -C - -LRZ --create-dirs --output "FireFox\win64-aarch64\Firefox Setup %1.exe" http://download-installer.cdn.mozilla.net/pub/firefox/releases/%1/win64-aarch64/%lng%/Firefox%%20Setup%%20%1.exe
curl.exe -C - -LRZ --create-dirs --output "FireFox\win64\Firefox Setup %1.exe" http://download-installer.cdn.mozilla.net/pub/firefox/releases/%1/win64/%lng%/Firefox%%20Setup%%20%1.exe
exit
