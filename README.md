# Dotfiles Backup & Restore

A simple utility to backup and restore configuration files for end-4's Hyprland desktop environment setup, including AGS (Aylur's GTK Shell) and Hyprland configurations.

## What it backs up

-   Hyprland custom configurations from `~/.config/hypr/custom/`
    -   Environment variables
    -   General settings
    -   Keybindings
    -   Window rules
    -   Autostart executables
-   AGS user options from `~/.config/ags/user_options.jsonc`

## Setup

1. Clone the repository:

```bash
git clone https://github.com/cichowlasp/end-4-dots_backup_and_restore.git

cd end-4-dots_backup_and_restore
```

2. Make the scripts executable:

```bash
chmod +x create_backup.sh restore_backup.sh
```

## Usage

### Creating a backup

```bash
./create_backup.sh
```

This will copy your current configurations to the `backup/` directory.

### Restoring a backup

```bash
./restore_backup.sh
```

This will restore the saved configurations from `backup/` to their appropriate locations.

## Structure

```
.
├── backup/
│   ├── custom/           # Hyprland configurations
│   │   ├── env.conf
│   │   ├── general.conf
│   │   ├── keybinds.conf
│   │   ├── rules.conf
│   │   └── execs.conf
│   └── user_options.jsonc # AGS user options
├── create_backup.sh
└── restore_backup.sh
```

## Note

Make sure to run the scripts with appropriate permissions as they need to access system configuration directories.
