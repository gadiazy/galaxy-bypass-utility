# Contributing to Galaxy Bypass Utility 🚀

Thank you for your interest in contributing to Galaxy Bypass Utility! We welcome contributions from the community to make this tool even better.

## 🤝 How to Contribute

### 🐛 Reporting Bugs
- Use the [Bug Report template](https://github.com/MNDL-27/galaxy-bypass-utility/issues/new?template=bug_report.md)
- Include detailed device information and steps to reproduce
- Check existing issues first to avoid duplicates

### 💡 Suggesting Features  
- Use the [Feature Request template](https://github.com/MNDL-27/galaxy-bypass-utility/issues/new?template=feature_request.md)
- Explain the use case and potential benefits
- Consider compatibility with different Samsung devices

### ❓ Getting Help
- Use the [Question template](https://github.com/MNDL-27/galaxy-bypass-utility/issues/new?template=question.md)
- Check the README and existing issues first
- Be specific about your setup and what you're trying to achieve

## 🔧 Development Contributions

### Prerequisites
- Windows 10/11 development environment
- Basic knowledge of Batch scripting
- Samsung Galaxy device for testing
- ADB Platform Tools for testing

### Getting Started
1. **Fork** the repository
2. **Clone** your fork locally
3. **Create a branch** for your feature/fix
4. **Make your changes** 
5. **Test thoroughly** on real Samsung devices
6. **Submit a pull request**

### Code Style Guidelines
- **Clear variable names**: Use descriptive names
- **Comments**: Explain complex logic or ADB commands
- **Error handling**: Include proper error checking
- **User feedback**: Provide clear status messages
- **Safety first**: Ensure all changes are reversible

### Testing Requirements
- Test on multiple Samsung Galaxy models if possible
- Verify both enable and disable functions work
- Check error handling with disconnected devices
- Ensure compatibility with different Android versions

## 📋 Development Setup

### Testing Changes
```batch
REM Test with your local ADB setup
.\adb\adb.exe devices

REM Test individual commands
.\adb\adb.exe shell settings put system pass_through 1
.\adb\adb.exe shell settings get system pass_through
```

### File Structure
```
galaxy-bypass-utility/
├── Battery Bypass Tool.bat    # Main tool (edit carefully)
├── adb/                      # Don't modify ADB files
├── README.md                 # Update for new features
└── .github/                  # Issue templates & workflows
```

## 🛡️ Security Considerations

- **No root requirements**: Keep using ADB-only commands
- **Reversible changes**: All modifications must be undoable
- **Safe commands**: Only use tested, safe ADB commands
- **Clear warnings**: Alert users about potential risks

## 📚 Documentation

When contributing:
- Update README.md if adding features
- Include usage examples for new functionality
- Update troubleshooting section for new issues
- Add comments to complex batch script sections

## 🚀 Pull Request Process

1. **Describe your changes** clearly in the PR description
2. **Reference related issues** using keywords (e.g., "Fixes #123")
3. **Include testing results** on your Samsung device
4. **Update documentation** as needed
5. **Be patient** - reviews may take time

## 🌟 Recognition

Contributors will be acknowledged in:
- README.md contributors section
- Release notes for significant contributions
- Special thanks for major improvements

## 📞 Contact

- **Website**: [protik.eu.org](https://protik.eu.org)
- **Issues**: Use GitHub issue templates
- **Discussions**: GitHub Discussions (if enabled)
- **Project**: Created and maintained by [@MNDL-27](https://github.com/MNDL-27)

## ❤️ Code of Conduct

- **Be respectful** to all community members
- **Stay on topic** in issues and discussions
- **Help others** when you can
- **Follow GitHub's Community Guidelines**

---

*Thank you for helping make Galaxy Bypass Utility better for everyone! 🎉*