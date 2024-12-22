### `Ubuntu System Cleaner and Maintenance Tool`

```markdown
# Ubuntu System Cleaner and Maintenance Tool

A comprehensive Bash script designed to clean, optimize, and maintain Ubuntu-based systems, ensuring they are free from broken dependencies, unnecessary packages, and cached files. Ideal for keeping your system in top shape with minimal effort.

## Features

- **System Updates**: Updates the package list and upgrades installed packages.
- **Dependency Management**: Fixes broken dependencies and reconfigures pending packages.
- **Automatic Cleanup**: Removes orphaned packages and cleans cached package files.
- **System Repair**: Ensures all packages are properly configured and resolves issues with broken packages.
- **Reboot Option**: Restarts the system automatically after the maintenance process (optional).

## Requirements

- **Supported Systems**: Ubuntu 22.04 LTS (Noble) or other Ubuntu-based distributions.
- **Permissions**: Root privileges are required to execute the script.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/espinozan/ubuntu-system-cleaner.git
   cd ubuntu-system-cleaner
   ```

2. Make the script executable:

   ```bash
   chmod +x ubuntu_system_cleaner.sh
   ```

## Usage

1. Run the script with superuser privileges:

   ```bash
   sudo ./ubuntu_system_cleaner.sh
   ```

2. Follow the prompts displayed during execution. The script will:

   - Update the system packages.
   - Clean up unnecessary dependencies.
   - Fix broken packages and configurations.
   - Optimize the system's performance.

3. If you do not wish to reboot automatically after maintenance, edit the script and comment out or remove the following line:

   ```bash
   sudo reboot
   ```

## Example

The script will output real-time progress as it runs:

```bash
Starting system update...
System update completed.

Cleaning up unnecessary packages...
Cleanup completed.

Fixing broken dependencies...
No broken dependencies found.

Process completed. System will now restart.
```

## Contributing

Contributions are welcome! If you have suggestions, feature requests, or bug reports, feel free to open an issue or submit a pull request.

## License

This project is licensed under the **GNU General Public License v3.0**. See the [LICENSE](LICENSE) file for more details.

---

**Author**: [Nahuel Espinoza](https://github.com/espinozan)  
Maintained with ❤️ for the Linux community.
```
