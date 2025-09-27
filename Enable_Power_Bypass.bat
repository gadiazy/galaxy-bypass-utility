@echo off
echo.
echo =======================================================
echo  Enabling System-Wide Power Bypass & Disabling GOS
echo =======================================================
echo.
echo  Make sure your phone is connected with USB Debugging enabled.
echo.
pause
echo.

echo --- Enabling Power Bypass...
adb shell settings put system pass_through 1

echo --- Disabling Game Tools...
adb shell pm disable-user com.samsung.android.game.gametools

echo --- Disabling Game Home...
adb shell pm disable-user com.samsung.android.game.gamehome

echo --- Disabling Game Optimization Service (GOS)...
adb shell pm disable-user com.samsung.android.game.gos

echo.
echo =======================================================
echo  Process Complete. Power Bypass is now active.
echo =======================================================
echo.
pause