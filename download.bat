@echo off
if "%1"=="" (
    echo No URL file provided!
    pause
    exit /b
)
set /p url=< %1
"C:\yt-dlp\yt-dlp.exe" %url%
pause