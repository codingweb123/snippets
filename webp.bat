@echo off
cls
echo ^<=========^> IMG TO WEBP ^<=========^>
echo ^<=========^> CODINGWEB123 ^<========^>
echo ^<=========^> IMG TO WEBP ^<=========^>
echo.

if not exist "*.jpg" if not exist "*.png" (
    color 0c
    echo No JPG/PNG files found in the directory.
    pause
    exit /b
)
for %%f in (*.jpg *.png) do (
    color 0c
    echo Converting %%f =^> %%~nf.webp
    magick -quality 70 "%%f" "%%~nf.webp"
)
color 02
echo Conversion completed.