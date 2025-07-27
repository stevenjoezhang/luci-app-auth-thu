# LuCI App Auth THU

This is a LuCI app for managing authentication with [GoAuthing](https://github.com/z4yx/GoAuthing), specifically designed for Tsinghua University users.

## Features

- **Web-based Configuration**: Easy-to-use web interface through LuCI
- **Service Management**: Start/stop GoAuthing service with real-time status monitoring
- **User Authentication**: Configure username and password for campus network authentication
- **Core Version Display**: Show current GoAuthing core version
- **Automatic Core Download**: Download the latest GoAuthing core with intelligent features:
  - Auto-detect system architecture (arm, arm64, x86_64, etc.)
  - Fetch latest version from GitHub API
  - Support template variables (`${version}`, `${arch}`)
  - Multiple CDN fallback support

## Installation

Download `.ipk` or `.apk` package from the [releases page](https://github.com/stevenjoezhang/luci-app-auth-thu/releases) and install it on your OpenWrt router.

## Configuration

### Basic Settings

- **Enable**: Toggle the GoAuthing service on/off
- **Username**: Your Tsinghua University authentication username
- **Password**: Your Tsinghua University authentication password

### Core Management

- **Core Version**: Displays the currently installed GoAuthing version
- **Download Core**: Download the latest GoAuthing binary
- **Core Download URLs**: Configure download sources with template support

### Template Variables

The download URL supports the following template variables:

- `${version}`: Automatically replaced with the latest version from GitHub
- `${arch}`: Automatically replaced with detected system architecture

**Example template**:
```
https://github.com/z4yx/GoAuthing/releases/download/${version}/auth-thu.linux.${arch}
```

### Supported Architectures

- `arm` (ARMv7)
- `arm64` (AArch64)
- `armv5`, `armv6` (older ARM variants)
- `loong64` (LoongArch)
- `mipsbe`, `mipsle` (MIPS big/little endian)
- `ppc64le` (PowerPC 64-bit LE)
- `riscv64` (RISC-V 64-bit)
- `x86_64` (Intel/AMD 64-bit)

See [GoAuthing releases page](https://github.com/z4yx/GoAuthing/releases) for available architectures and versions.

## License

GPL-3.0-only

## Contributing

Issues and pull requests are welcome. Please ensure compatibility with OpenWrt and LuCI standards.
