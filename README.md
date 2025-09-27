# Galaxy Bypass Utility 🚀

A pair of simple yet powerful Windows batch scripts to take control of your Samsung Galaxy's gaming performance by managing the Game Optimization Service (GOS) and enabling the Power Bypass feature.

## ✨ Features

These scripts provide a one-click solution to:

- **`Disable_GOS.bat`**: Unleash maximum performance for gaming sessions.
  - ✅ Enables system-wide Power Bypass
  - ❌ Disables the Game Optimization Service (GOS)
  - ❌ Disables Game Launcher & Game Tools

- **`Enable_GOS.bat`**: Restore your device to its default factory settings.
  - ❌ Disables Power Bypass
  - ✅ Re-enables GOS, Game Launcher, & Game Tools

## 🤔 Understanding the Key Concepts

### GOS (Game Optimization Service)
A built-in Samsung service that balances performance and temperature during gaming. It can sometimes limit (throttle) the CPU/GPU to prevent overheating, which power users may want to bypass for higher framerates.

### Power Bypass (Pause USB Power Delivery)
An official feature that allows the phone to draw power directly from a connected USB-PD charger (minimum 20W), bypassing the battery entirely. This dramatically reduces heat generation during long gaming sessions, leading to more stable performance.

## 🛠️ Prerequisites

Before you begin, ensure you have the following:

- **ADB Platform Tools**: Download the latest version from Google's official site
- **A Samsung Galaxy Device**: These scripts are designed for modern Samsung phones
- **A USB Cable**: To connect your phone to your PC

## ⚙️ Setup & Installation Guide

1. **Install ADB**:
   - Download and extract the Platform Tools zip file to an easily accessible location (e.g., `C:\platform-tools`)
   - For the scripts to work from any folder, add this location to your Windows Path environment variable

2. **Enable USB Debugging on Your Phone**:
   - Navigate to **Settings** > **About phone** > **Software information**
   - Tap the **Build number** field 7 times to unlock Developer options
   - Return to the main Settings menu and enter the new **Developer options** menu
   - Scroll down and toggle on **USB debugging**

3. **Authorize Your PC**:
   - Connect your phone to your PC
   - A prompt will appear on your phone to "Allow USB debugging"
   - Check the "Always allow from this computer" box and tap **Allow**

## 🚀 Usage

With setup complete, simply double-click the script you want to run:

- **For Peak Performance**: Run `Disable_GOS.bat`
- **To Return to Stock**: Run `Enable_GOS.bat`

Follow the on-screen prompts, and you're all set!

## 📋 What Each Script Does

### Disable_GOS.bat
- Enables Power Bypass feature (`pass_through = 1`)
- Disables Game Tools (`com.samsung.android.game.gametools`)
- Disables Game Home (`com.samsung.android.game.gamehome`)  
- Disables Game Optimization Service (`com.samsung.android.game.gos`)

### Enable_GOS.bat
- Disables Power Bypass feature (`pass_through = 0`)
- Re-enables Game Tools
- Re-enables Game Home
- Re-enables Game Optimization Service

## 🔧 Command Breakdown

- `adb shell settings put system pass_through 1`: Enables the Power Bypass feature (0 disables it)
- `adb shell pm disable-user <package_name>`: Disables a specific app for the current user (non-root method)
- `adb shell pm enable <package_name>`: Re-enables a disabled app

## 📱 Compatibility

These scripts are designed for modern Samsung Galaxy devices that support:
- Game Optimization Service (GOS)
- Power Bypass functionality
- ADB connectivity

## ⚠️ Important Notes

⚠️ **Warning**: Disabling GOS may lead to higher device temperatures during intensive gaming sessions. Monitor your device's temperature and use at your own discretion.

🔋 **Power Bypass**: Only works when connected to a compatible fast charger (minimum 20W). The feature automatically disables when unplugged.

🎮 **Gaming Performance**: Disabling GOS typically results in higher frame rates but may cause thermal throttling if the device gets too hot.

## 🔍 Troubleshooting

- **"adb is not recognized"**: Make sure ADB is installed and added to your system PATH
- **"device unauthorized"**: Check your phone for the USB debugging authorization prompt
- **"no devices found"**: Ensure USB debugging is enabled and the device is properly connected
- **Scripts don't work**: Try running Command Prompt as Administrator

## 🔄 Reverting Changes

You can always revert to default settings by running the appropriate script or manually through your device's Game Launcher settings.

## ⚠️ Disclaimer

Galaxy Bypass Utility uses Android's official developer tools (ADB) to change system settings. While the commands are safe and reversible, proceed with caution. The creator of this utility is not responsible for any issues that may arise from its use.

---

*Use these scripts responsibly and monitor your device's temperature during extended gaming sessions.*