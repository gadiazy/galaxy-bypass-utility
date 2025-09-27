@echo off
cls
title Samsung Power Bypass Tool

:menu
cls
echo.
echo  ========================================================
echo  ^|                                                      ^|
echo  ^|             SAMSUNG GALAXY POWER BYPASS TOOL         ^|
echo  ^|                                                      ^|
echo  ========================================================
echo.
echo  Please choose an option:
echo.
echo    [1] Enable Power Bypass ^& Disable GOS
echo        (Reduces heat by bypassing the battery during gaming)
echo.
echo    [2] Disable Power Bypass ^& Restore Defaults
echo        (Returns charging and GOS to normal operation)
echo.
echo    [3] Exit
echo.
set /p choice="Enter your choice [1, 2, or 3]: "

if "%choice%"=="1" goto enable_bypass
if "%choice%"=="2" goto disable_bypass
if "%choice%"=="3" goto exit

echo Invalid choice. Please try again.
timeout /t 2 >nul
goto menu

:enable_bypass
cls
echo.
echo  ========================================================
echo  ^|        ENABLING POWER BYPASS ^& DISABLING GOS        ^|
echo  ========================================================
echo.
echo  (!) IMPORTANT: Please ensure your phone is connected to your PC
echo      with USB Debugging enabled before continuing.
echo.
pause
cls
echo.
echo  Waiting for ADB device...
adb wait-for-device
echo  Device detected! Starting optimization process...
echo.
timeout /t 2 >nul
echo  [1/4] Enabling Power Bypass...
adb shell settings put system pass_through 1
echo      > DONE
echo.
echo  [2/4] Disabling Game Tools...
adb shell pm disable-user com.samsung.android.game.gametools
echo      > DONE
echo.
echo  [3/4] Disabling Game Launcher...
adb shell pm disable-user com.samsung.android.game.gamehome
echo      > DONE
echo.
echo  [4/4] Disabling Game Optimization Service (GOS)...
adb shell pm disable-user com.samsung.android.game.gos
echo      > DONE
echo.
echo  ========================================================
echo  ^|         PROCESS COMPLETE - POWER BYPASS ENABLED      ^|
echo  ========================================================
echo.
echo  Power Bypass is now active and GOS has been disabled.
echo.
pause
goto menu

:disable_bypass
cls
echo.
echo  ========================================================
echo  ^|       DISABLING POWER BYPASS ^& RESTORING DEFAULTS     ^|
echo  ========================================================
echo.
echo  (!) IMPORTANT: Please ensure your phone is connected to your PC
echo      with USB Debugging enabled before continuing.
echo.
pause
cls
echo.
echo  Waiting for ADB device...
adb wait-for-device
echo  Device detected! Starting restoration process...
echo.
timeout /t 2 >nul
echo  [1/4] Disabling Power Bypass...
adb shell settings put system pass_through 0
echo      > DONE
echo.
echo  [2/4] Enabling Game Tools...
adb shell pm enable com.samsung.android.game.gametools
echo      > DONE
echo.
echo  [3/4] Enabling Game Launcher...
adb shell pm enable com.samsung.android.game.gamehome
echo      > DONE
echo.
echo  [4/4] Enabling Game Optimization Service (GOS)...
adb shell pm enable com.samsung.android.game.gos
echo      > DONE
echo.
echo  ========================================================
echo  ^|      PROCESS COMPLETE - DEVICE RESTORED TO NORMAL    ^|
echo  ========================================================
echo.
echo  Your device has been restored to its default configuration.
echo.
pause
goto menu

:exit
exit

