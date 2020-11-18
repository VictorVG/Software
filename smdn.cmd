@echo off
rem  If Your use cURL version before 7.66.0, delete -Z swith: -C - -LR --create-dirs
setlocal enableextensions
if "%2" == "" (set lng=ru) else (set lng=%2)
if "%1" == "" (echo Missing parameter version number. Usage: smdn 2.53.5 [^<lang^>] & pause & exit /b)
curl.exe -C - -LRZ --create-dirs --output SeaMonkey\linux-i686\seamonkey-%1.%lng%.linux-i686.tar.bz2 http://download-installer.cdn.mozilla.net/pub/seamonkey/releases/%1/linux-i686/%lng%/seamonkey-%1.%lng%.linux-i686.tar.bz2
curl.exe -C - -LRZ --create-dirs --output SeaMonkey\linux-x86_64\seamonkey-%1.%lng%.linux-x86_64.tar.bz2 http://download-installer.cdn.mozilla.net/pub/seamonkey/releases/%1/linux-x86_64/%lng%/seamonkey-%1.%lng%.linux-x86_64.tar.bz2
curl.exe -C - -LRZ --create-dirs --output SeaMonkey\win32\seamonkey-%1.%lng%.win32.installer.exe http://download-installer.cdn.mozilla.net/pub/seamonkey/releases/%1/win32/%lng%/seamonkey-%1.%lng%.win32.installer.exe
curl.exe -C - -LRZ --create-dirs --output SeaMonkey\win32\seamonkey-%1.%lng%.win32.zip http://download-installer.cdn.mozilla.net/pub/seamonkey/releases/%1/win32/%lng%/seamonkey-%1.%lng%.win32.zip
curl.exe -C - -LRZ --create-dirs --output SeaMonkey\win64\seamonkey-%1.%lng%.win64.installer.exe http://download-installer.cdn.mozilla.net/pub/seamonkey/releases/%1/win64/ru/seamonkey-%1.%lng%.win64.installer.exe
curl.exe -C - -LRZ --create-dirs --output SeaMonkey\win64\seamonkey-%1.%lng%.win64.zip http://download-installer.cdn.mozilla.net/pub/seamonkey/releases/%1/win64/ru/seamonkey-%1.%lng%.win64.zip
for %%A in (
         cs.langpack.xpi
         de.langpack.xpi
         en-GB.langpack.xpi
         en-US.langpack.xpi
         es-AR.langpack.xpi
         es-ES.langpack.xpi
         fi.langpack.xpi
         fr.langpack.xpi
         hu.langpack.xpi
         it.langpack.xpi
         ja-JP-mac.langpack.xpi
         ja.langpack.xpi
         ka.langpack.xpi
         nb-NO.langpack.xpi
         nl.langpack.xpi
         pl.langpack.xpi
         pt-BR.langpack.xpi
         pt-PT.langpack.xpi
         ru.langpack.xpi
         sk.langpack.xpi
         sv-SE.langpack.xpi
         zh-CN.langpack.xpi
         zh-TW.langpack.xpi
         ) do curl.exe -C - -LRZ --create-dirs --output SeaMonkey\xpi\seamonkey-%1.%%A http://download-installer.cdn.mozilla.net/pub/seamonkey/releases/%1/langpack/seamonkey-%1.%%A
exit