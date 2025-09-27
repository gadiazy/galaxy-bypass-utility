# Security Policy

## 🔒 Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 2.0.x   | ✅ Yes             |
| < 2.0   | ❌ No              |

## 🛡️ Reporting a Vulnerability

We take the security of Galaxy Bypass Utility seriously. If you discover a security vulnerability, please follow these steps:

### 📧 Private Reporting
**DO NOT** create a public GitHub issue for security vulnerabilities.

Instead, please:
1. **Email**: Create a private report through GitHub's Security tab
2. **Include**: Detailed description of the vulnerability
3. **Provide**: Steps to reproduce (if applicable)
4. **Specify**: Affected versions

### ⏰ Response Timeline
- **Acknowledgment**: Within 48 hours
- **Initial Assessment**: Within 7 days  
- **Resolution**: Varies by severity (typically 14-30 days)

### 🔍 What We Consider Security Issues

- **Code execution vulnerabilities** in the batch script
- **ADB command injection** possibilities
- **Privilege escalation** through the utility
- **Malicious ADB commands** that could harm devices
- **Data exposure** risks

### 🚫 Out of Scope

- **ADB platform tools vulnerabilities** (report to Google)
- **Samsung device vulnerabilities** (report to Samsung)
- **User misconfiguration** issues
- **Feature requests** or general bugs

### 🛠️ Security Best Practices

Galaxy Bypass Utility follows these security principles:

- **✅ No root requirements** - Uses only ADB commands
- **✅ Reversible operations** - All changes can be undone
- **✅ Official ADB tools** - Uses Google's platform tools
- **✅ Clear user warnings** - Alerts about potential risks
- **✅ Open source** - All code is transparent and auditable

### 🔐 Safe Usage Guidelines

To use Galaxy Bypass Utility safely:

1. **Download from official sources** only
2. **Verify file integrity** before running
3. **Understand the changes** being made to your device
4. **Keep backups** of important data
5. **Monitor device temperature** during gaming

---

*Security is a shared responsibility. Thank you for helping keep Galaxy Bypass Utility safe! 🛡️*