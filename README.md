# Galaxy Bypass Utility 🚀

A powerful Windows batch tool with an interactive menu to take control of your Samsung Galaxy's gaming performance by managing the Game Optimization Service (GOS) and enabling the Power Bypass feature.

## ✨ Features

The Galaxy Bypass Utility provides an easy-to-use interactive menu with two main options:

- **🚀 Enable Power Bypass & Disable GOS**: Unleash maximum performance for gaming sessions
  - ✅ Enables system-wide Power Bypass
  - ❌ Disables the Game Optimization Service (GOS)
  - ❌ Disables Game Launcher & Game Tools

- **🔄 Disable Power Bypass & Restore Defaults**: Return your device to factory settings  
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

With setup complete, simply:

1. **Double-click `Battery Bypass Tool.bat`** to launch the interactive menu
2. **Choose your option**:
   - **Option 1**: Enable Power Bypass & Disable GOS (for peak gaming performance)
   - **Option 2**: Disable Power Bypass & Restore Defaults (return to stock settings)  
   - **Option 3**: Exit the tool
3. **Follow the on-screen prompts** - the tool will wait for your device and guide you through each step

The tool includes:
- ✅ **ADB device detection** - automatically waits for your phone to be connected
- ✅ **Progress indicators** - shows you exactly what's happening at each step  
- ✅ **Interactive menu** - easy navigation between options
- ✅ **Safe operation** - all changes are completely reversible

## 📋 What The Tool Does

### Enable Power Bypass & Disable GOS (Option 1)
- Enables Power Bypass feature (`pass_through = 1`)
- Disables Game Tools (`com.samsung.android.game.gametools`)
- Disables Game Home (`com.samsung.android.game.gamehome`)  
- Disables Game Optimization Service (`com.samsung.android.game.gos`)

### Disable Power Bypass & Restore Defaults (Option 2)
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

You can always revert to default settings by:
- Running the tool again and selecting **Option 2** (Disable Power Bypass & Restore Defaults)
- Or manually through your device's Game Launcher settings

## ⚠️ Disclaimer

Galaxy Bypass Utility uses Android's official developer tools (ADB) to change system settings. While the commands are safe and reversible, proceed with caution. The creator of this utility is not responsible for any issues that may arise from its use.

---

*Use these scripts responsibly and monitor your device's temperature during extended gaming sessions.*