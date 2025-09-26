# Alahassine - Bit Manipulation Package For Buildroot

A simple bit manipulation utility package for Buildroot that provides functions to set, clear, and toggle bits in integers with a demonstration program.

## 📋 Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [API Reference](#api-reference)
- [Building from Source](#building-from-source)
- [License](#license)

## ✨ Features

- **Bit Manipulation Functions**: Set, clear, and toggle bits in integers
- **Buildroot Integration**: Seamless integration with Buildroot build system
- **Cross-Platform**: Supports cross-compilation for embedded systems
- **Static Library**: Includes `libsetbit.a` for use in other projects
- **Demo Application**: Command-line utility to demonstrate functionality

## 📁 Project Structure

```
package/alahassine/
├── Config.in                 # Buildroot package configuration
├── alahassine.mk            # Buildroot makefile
└── src/                     # Source code directory
    ├── SetBit.h             # Header file
    ├── SetBit.c             # Implementation
    ├── main.c               # Demo application
    └── Makefile             # Build configuration
```

## 🚀 Installation

### Prerequisites
- Buildroot environment set up
- Cross-compilation toolchain

### Step 1: Add Package to Buildroot

```bash
# Copy the alahassine directory to your Buildroot package directory
cp -r alahassine/ buildroot/package/alahassine/
```

### Step 2: Enable Package in Configuration

```bash
cd buildroot
make menuconfig
```

Navigate to:
```
Target packages  →  alahassine
```

Select `alahassine` and save the configuration.

### Step 3: Build the Package

```bash
# Build only the alahassine package
make alahassine

# Or build the entire system
make
```

## 💻 Usage

### Command Line Utility

After installation, run the demo application on your target system:

```bash
alahassine
```

Example output:
```
==============================
Enter An Integer : 5
Enter The Bit Position (0-based) : 1

After Toggling Bit 1 : 7
After Clearing Bit 1 : 5
After Setting Bit 1 : 5
==============================
```

### API Usage in Your Projects

Include the header and link against the library:

```c
#include <SetBit.h>

int main() {
    int number = 5;
    
    // Set bit at position 1
    int result = SetBit(number, 1);
    
    // Clear bit at position 0
    result = ClearBit(number, 0);
    
    // Toggle bit at position 2
    result = ToggleBit(number, 2);
    
    return 0;
}
```

## 🔧 API Reference

### `SetBit(int num, int bitPos)`
Sets the bit at the specified position (0-based).

**Parameters:**
- `num`: Input integer
- `bitPos`: Bit position to set (0-based)

**Returns:** Integer with the specified bit set

### `ClearBit(int num, int bitPos)`
Clears the bit at the specified position (0-based).

**Parameters:**
- `num`: Input integer
- `bitPos`: Bit position to clear (0-based)

**Returns:** Integer with the specified bit cleared

### `ToggleBit(int num, int bitPos)`
Toggles the bit at the specified position (0-based).

**Parameters:**
- `num`: Input integer
- `bitPos`: Bit position to toggle (0-based)

**Returns:** Integer with the specified bit toggled

## 🛠 Building from Source

### Standalone Build (Without Buildroot)

```bash
cd src
make          # Build the project
make clean    # Clean build artifacts
```

### Build Outputs
- `alahassine`: Demo executable
- `libsetbit.a`: Static library
- `SetBit.h`: Header file

## 📊 Examples

### Basic Usage
```c
#include <stdio.h>
#include <SetBit.h>

int main() {
    int value = 0b1010; // Binary 10
    
    printf("Original: %d\n", value);
    printf("Set bit 0: %d\n", SetBit(value, 0));
    printf("Clear bit 1: %d\n", ClearBit(value, 1));
    printf("Toggle bit 3: %d\n", ToggleBit(value, 3));
    
    return 0;
}
```

### Expected Output
```
Original: 10
Set bit 0: 11
Clear bit 1: 8
Toggle bit 3: 2
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🐛 Troubleshooting

### Common Issues

**Issue**: Package not found in menuconfig
**Solution**: Ensure the package directory is correctly placed in `buildroot/package/`

**Issue**: Build failures
**Solution**: Check that your Buildroot environment and toolchain are properly set up

**Issue**: Library not found during linking
**Solution**: Ensure `-lsetbit` is added to your linker flags

## 📞 Support

If you encounter any problems or have questions:

1. Check the [Issues](../../issues) page
2. Create a new issue with detailed description
3. Provide your Buildroot version and target architecture

---
