@echo off
echo.
echo =======================================================
echo  Disabling Power Bypass & Re-Enabling GOS
echo =======================================================
echo.
echo  Make sure your phone is connected with USB Debugging enabled.
echo.
pause
echo.

echo --- Disabling Power Bypass...
adb shell settings put system pass_through 0

echo --- Enabling Game Tools...
adb shell pm enable com.samsung.android.game.gametools

echo --- Enabling Game Home...
adb shell pm enable com.samsung.android.game.gamehome

echo --- Enabling Game Optimization Service (GOS)...
adb shell pm enable com.samsung.android.game.gos

echo.
echo =======================================================
echo  Process Complete. Phone is back to normal operation.
echo =======================================================
echo.
pause