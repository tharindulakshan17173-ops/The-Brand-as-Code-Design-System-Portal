@echo off
echo.
echo ============================================
echo   Brand-as-Code Design System Portal
echo ============================================
echo.

if not exist "dist" (
    echo Building the application...
    call npm run build
    if errorlevel 1 (
        echo Build failed!
        pause
        exit /b 1
    )
)

echo Starting server...
echo.
echo Open your browser and go to: http://localhost:3000
echo.
echo Press Ctrl+C to stop the server
echo.

node start.js
