@echo off
:: Set window size to 80 columns and 25 rows
mode con: cols=80 lines=25

:: Set background to blue and text to white
color 1F

:: Main loop
:mainMenu
cls

:: ASCII Art Title
echo.
echo " ____   ____ _____         _   _____           _     ";
echo "|  _ \ / ___|_   _|__  ___| |_|_   _|__   ___ | |___ ";
echo "| |_) | |     | |/ _ \/ __| '_ \| |/ _ \ / _ \| / __|";
echo "|  __/| |___  | |  __/ (__| | | | | (_) | (_) | \__ \";
echo "|_|    \____| |_|\___|\___|_| |_|_|\___/ \___/|_|___/";
echo. 					you ever play minecraft?

:: Main Menu
echo ============================
echo        MENU OPTIONS
echo ============================
echo.
echo 1. Fix Network Issues
echo 2. Fix Drive/Windows Issues
echo 3. Activation Scripts
echo 4. Debloat Scripts
echo 5. Extras!
echo 6. About
echo 7. Exit
echo.

:: Awaiting User Input
set /p option=Choose an option [1-6]:

:: Execute commands based on user input
if "%option%"=="1" (
    echo Running Command 1...
    goto :NetworkSubMenu
) else if "%option%"=="2" (
    echo Running Command 2...
    goto :FixSubMenu
    pause
) else if "%option%"=="3" (
    echo Running Command 3...
    :: Insert your command here
    pause
) else if "%option%"=="4" (
    echo Running Command 4...
    :: Insert your command here
    pause
) else if "%option%"=="5" (
    echo Extras!
    goto :ExtrasSubMenu
) else if "%option%"=="6" (
    echo About This Program...
    goto :about
) else if "%option%"=="7" (
    echo Exiting...
    exit
) else (
    echo Invalid option. Please try again.
    pause
    goto :eof
)
:: Sub-menu for Option 1
:NetworkSubMenu
cls
echo ============================
echo        FIX NETWORK ISSUES
echo ============================
echo.
echo 1. Run Sub-command 1
echo 2. Run Sub-command 2
echo 3. Return to Main Menu
echo.

:: Wait for user input
set /p subOption=Choose an option [1-3]:

:: Execute commands based on user input
if "%subOption%"=="1" (
    echo Running Sub-command 1...
    :: Insert your command here
    pause
    goto :subMenu
) else if "%subOption%"=="2" (
    echo Running Sub-command 2...
    :: Insert your command here
    pause
    goto :subMenu
) else if "%subOption%"=="3" (
    goto :mainMenu
) else (
    echo Invalid option. Please try again.
    pause
    goto :subMenu
)

:: About Section
:about
cls
echo ============================
echo        ABOUT UBR
echo ============================
echo.
echo This tool was created as way to simplify running commands on client computers.
echo It was originally called PCTechTools!
echo Hoping to add PowerShell commands. One day...
echo.
echo Created by: Joe DiGeronimo
echo Special thanks to: ChatGPT, GeeksOnSite and my old friends back at OPEX.
echo Version: 0.52
echo Date: 30 January 2025
echo.
echo ============================
echo.
echo Press any key to return to the main menu.

:: Wait for user to press any key to return to the main menu
pause >nul
goto :mainMenu