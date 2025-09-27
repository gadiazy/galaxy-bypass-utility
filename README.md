# Galaxy Bypass Utility 🚀

<div align="center">

![Galaxy Bypass Utility](https://img.shields.io/badge/Galaxy%20Bypass-Utility-blue?style=for-the-badge&logo=android)
![Version](https://img.shields.io/github/v/release/MNDL-27/galaxy-bypass-utility?style=for-the-badge)
![Downloads](https://img.shields.io/github/downloads/MNDL-27/galaxy-bypass-utility/total?style=for-the-badge)
![License](https://img.shields.io/github/license/MNDL-27/galaxy-bypass-utility?style=for-the-badge)

**A powerful Windows batch tool with an interactive menu to take control of your Samsung Galaxy's gaming performance by managing the Game Optimization Service (GOS) and enabling the Power Bypass feature.**

[📥 Download Latest Release](https://github.com/MNDL-27/galaxy-bypass-utility/releases/latest) • [📖 Quick Start](#setup--installation-guide) • [🐛 Report Issues](https://github.com/MNDL-27/galaxy-bypass-utility/issues)

</div>

## 📋 Table of Contents

- [✨ Features](#-features)
- [🤔 Key Concepts](#-understanding-the-key-concepts)
- [🛠️ Prerequisites](#️-prerequisites)  
- [⚙️ Setup & Installation](#️-setup--installation-guide)
- [🚀 Usage](#-usage)
- [📋 What The Tool Does](#-what-the-tool-does)
- [📁 Repository Structure](#-repository-structure)
- [🔍 Troubleshooting](#-troubleshooting)
- [❓ FAQ](#-frequently-asked-questions-faq)
- [🤝 Contributing](#-contributing)
- [📞 Connect](#-connect)

---

## ✨ Features

<table>
<tr>
<td width="50%">

### 🚀 **Enable Power Bypass & Disable GOS**
- ✅ Enables system-wide Power Bypass
- ❌ Disables the Game Optimization Service (GOS)
- ❌ Disables Game Launcher & Game Tools
- 🎯 **Result**: Maximum gaming performance

</td>
<td width="50%">

### 🔄 **Disable Power Bypass & Restore Defaults**
- ❌ Disables Power Bypass
- ✅ Re-enables GOS, Game Launcher, & Game Tools
- 🔙 **Result**: Factory default settings

</td>
</tr>
</table>

> **📸 Screenshots coming soon!** *We're working on adding visual demonstrations of the tool interface.*

## 🤔 Understanding the Key Concepts

### GOS (Game Optimization Service)
A built-in Samsung service that balances performance and temperature during gaming. It can sometimes limit (throttle) the CPU/GPU to prevent overheating, which power users may want to bypass for higher framerates.

### Power Bypass (Pause USB Power Delivery)
An official feature that allows the phone to draw power directly from a connected USB-PD charger (minimum 20W), bypassing the battery entirely. This dramatically reduces heat generation during long gaming sessions, leading to more stable performance.

## 🛠️ Prerequisites

Before you begin, ensure you have the following:

- **✅ ADB Platform Tools**: **INCLUDED!** No separate download needed
- **📱 Samsung Galaxy S Series Device**: S20, S21, S22, S23, S24 series (other models may not be supported)
- **🔌 A USB Cable**: To connect your phone to your PC

## ⚙️ Setup & Installation Guide

1. **Download & Extract**: 
   - Download the latest release from GitHub
   - Extract all files to a folder of your choice
   - **ADB is already included** - no additional setup required!

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

**It's now plug-and-play!** Simply:

1. **Double-click `Battery Bypass Tool.bat`** to launch the interactive menu
2. **Choose your option**:
   - **Option 1**: Enable Power Bypass & Disable GOS (for peak gaming performance)
   - **Option 2**: Disable Power Bypass & Restore Defaults (return to stock settings)  
   - **Option 3**: Exit the tool
3. **Follow the on-screen prompts** - the tool will wait for your device and guide you through each step

The tool includes:
- ✅ **Built-in ADB** - no separate installation needed
- ✅ **ADB device detection** - automatically waits for your phone to be connected
- ✅ **Progress indicators** - shows you exactly what's happening at each step  
- ✅ **Interactive menu** - easy navigation between options
- ✅ **Error handling** - clear messages if something goes wrong
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

## � Repository Structure

```
galaxy-bypass-utility/
├── Battery Bypass Tool.bat    # Main interactive tool
├── README.md                  # This documentation
├── LICENSE                    # MIT License
├── ADB_SETUP.md              # ADB setup instructions (for developers)
└── adb/                      # ADB Platform Tools (included)
    ├── adb.exe              # Main ADB executable
    ├── AdbWinApi.dll        # Required Windows API DLL
    ├── AdbWinUsbApi.dll     # Required Windows USB API DLL
    └── fastboot.exe         # Fastboot tool (bonus)
```

## 📱 Compatibility

**Confirmed Working:**
- **Galaxy S Series**: S20, S21, S22, S23, S24 (all variants: base, Plus, Ultra)
- **Galaxy Note Series**: Note 20, Note 20 Ultra (discontinued but supported)
- **Galaxy Z Series**: Z Fold/Flip series with GOS support

**Requirements:**
- Game Optimization Service (GOS) support
- Power Bypass functionality  
- ADB connectivity
- Android 10+ (recommended)

**⚠️ Not Supported:**
- Galaxy A series (most models lack GOS)
- Galaxy M series
- Older devices (pre-2020)
- Non-Samsung devices

## ⚠️ Important Notes

⚠️ **Warning**: Disabling GOS may lead to higher device temperatures during intensive gaming sessions. Monitor your device's temperature and use at your own discretion.

🔋 **Power Bypass**: Only works when connected to a compatible fast charger (minimum 20W). The feature automatically disables when unplugged.

🎮 **Gaming Performance**: Disabling GOS typically results in higher frame rates but may cause thermal throttling if the device gets too hot.

## 🔍 Troubleshooting

- **"ADB files not found"**: Make sure you extracted all files including the `adb` folder
- **"device unauthorized"**: Check your phone for the USB debugging authorization prompt
- **"no devices found"**: Ensure USB debugging is enabled and the device is properly connected  
- **Scripts don't work**: Try running as Administrator or check your USB cable
- **Connection timeout**: Try a different USB port or cable

## 🔄 Reverting Changes

You can always revert to default settings by:
- Running the tool again and selecting **Option 2** (Disable Power Bypass & Restore Defaults)
- Or manually through your device's Game Launcher settings

## ❓ Frequently Asked Questions (FAQ)

<details>
<summary><strong>🔋 Does Power Bypass work with wireless charging?</strong></summary>

No, Power Bypass only works with **wired USB-PD charging (20W+)**. Wireless charging will not activate the Power Bypass feature.
</details>

<details>
<summary><strong>📱 Which Samsung devices are supported?</strong></summary>

**Confirmed Working:**
- **Galaxy S20 series** (S20, S20+, S20 Ultra)
- **Galaxy S21 series** (S21, S21+, S21 Ultra)  
- **Galaxy S22 series** (S22, S22+, S22 Ultra)
- **Galaxy S23 series** (S23, S23+, S23 Ultra)
- **Galaxy S24 series** (S24, S24+, S24 Ultra)
- **Galaxy Note 20** and **Note 20 Ultra**
- **Galaxy Z Fold/Flip** series (with GOS)

**Not Supported:**
- Galaxy A series (lacks GOS on most models)
- Galaxy M series  
- Older devices (pre-2020)

To check compatibility: Go to Settings > Advanced features > Game Launcher. If it exists, your device likely supports this tool.
</details>

<details>
<summary><strong>🔥 Will disabling GOS make my phone overheat?</strong></summary>

Potentially yes. GOS exists to prevent overheating by limiting performance. When disabled:
- Monitor your device temperature closely
- Take breaks during long gaming sessions
- Use Power Bypass (with 20W+ charger) to reduce heat
- Stop gaming if the device gets too hot
</details>

<details>
<summary><strong>🔌 My charger is 25W but Power Bypass isn't working. Why?</strong></summary>

Check these requirements:
- Must be **USB-PD (Power Delivery) compatible**
- Cable must support the full wattage  
- Some chargers need specific cables (e.g., USB-C to USB-C)
- Try a different USB-C cable
- Check if your charger supports Samsung's fast charging protocols
</details>

<details>
<summary><strong>⚠️ Is this safe? Will it void my warranty?</strong></summary>

The tool is relatively safe because:
- ✅ Uses official ADB commands (no root)
- ✅ All changes are reversible
- ✅ No system files are modified
- ✅ Open source and transparent

**Warranty**: Technically, any modification could affect warranty, but these are software settings changes that can be completely reversed.
</details>

<details>
<summary><strong>🎮 Which games benefit most from this?</strong></summary>

High-performance games that are typically throttled:
- **Battle Royales**: PUBG Mobile, Fortnite, Call of Duty Mobile
- **Racing Games**: Asphalt 9, Real Racing 3
- **Graphics-Intensive**: Genshin Impact, Honkai Impact
- **Emulators**: GameCube, PS2, etc.

Casual games may not show noticeable improvements.
</details>

<details>
<summary><strong>💻 Can I run this on Mac or Linux?</strong></summary>

Currently **Windows only**. The batch script (.bat) is Windows-specific. However:
- The ADB commands work on any platform
- Someone could port this to shell scripts for Mac/Linux
- You can run the ADB commands manually on any OS
</details>

<details>
<summary><strong>🔄 How do I completely reset everything?</strong></summary>

To fully reset:
1. Run the tool and select **Option 2** (Restore Defaults)
2. Restart your phone
3. Alternatively, go to **Settings > Apps > Game Launcher > Storage > Clear Data**

This will restore all game-related settings to factory defaults.
</details>

## ⚠️ Disclaimer

Galaxy Bypass Utility uses Android's official developer tools (ADB) to change system settings. While the commands are safe and reversible, proceed with caution. The creator of this utility is not responsible for any issues that may arise from its use.

---

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details on:
- 🐛 Reporting bugs  
- 💡 Suggesting features
- 🔧 Code contributions
- 📚 Documentation improvements

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⭐ Support the Project

If Galaxy Bypass Utility helped improve your gaming experience:
- ⭐ **Star this repository** to show support
- 🐛 **Report issues** to help improve the tool  
- 🤝 **Contribute** code or documentation
- 📢 **Share** with other Samsung Galaxy users

## 📞 Connect

- 🌐 **Website**: [protik.eu.org](https://protik.eu.org)
- 🔗 **Repository**: [galaxy-bypass-utility](https://github.com/MNDL-27/galaxy-bypass-utility)
- 🐛 **Issues**: [Report Problems](https://github.com/MNDL-27/galaxy-bypass-utility/issues)
- 📥 **Releases**: [Download Latest](https://github.com/MNDL-27/galaxy-bypass-utility/releases)

---

<div align="center">

**Made with ❤️ for the Samsung Galaxy gaming community**

*Visit [protik.eu.org](https://protik.eu.org) • Use responsibly and monitor your device's temperature during extended gaming sessions.*

</div>