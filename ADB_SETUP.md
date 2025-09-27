# ADB Platform Tools Setup

This file explains how to add ADB platform tools to make the Galaxy Bypass Utility completely standalone.

## Directory Structure

Your Galaxy Bypass Utility should have this structure:

```
galaxy-bypass-utility/
├── Battery Bypass Tool.bat    # Main tool (already included)
├── README.md                  # Documentation (already included)
├── LICENSE                    # MIT License (already included)
├── .gitignore                # Git ignore rules (already included)
└── adb/                      # ADB platform tools folder (needs to be added)
    ├── adb.exe              # Main ADB executable
    ├── AdbWinApi.dll        # Required DLL
    ├── AdbWinUsbApi.dll     # Required DLL
    └── fastboot.exe         # Optional but included in platform tools
```

## How to Add ADB Platform Tools

1. **Download** the latest Android SDK Platform Tools from:
   https://developer.android.com/tools/releases/platform-tools

2. **Extract** the zip file

3. **Copy** the following files from `platform-tools` folder to the `adb` folder:
   - `adb.exe`
   - `AdbWinApi.dll` 
   - `AdbWinUsbApi.dll`
   - `fastboot.exe` (optional)

4. **Test** by running `Battery Bypass Tool.bat` - it should detect the local ADB files

## Why Include ADB?

- **Plug-and-play experience** - no separate ADB installation needed
- **Version consistency** - ensures compatibility
- **Easier distribution** - users can just download and run
- **Reduced support issues** - eliminates PATH and installation problems

## License Compliance

The ADB platform tools are distributed under the Apache License 2.0, which is compatible with including them in open source projects. The tools are provided by Google as part of the Android SDK.