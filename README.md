### My NixOS Configuration (WIP)

## Table of Contents
- [About](#-about)
- [Useful commands](#-commands)
- [Features](#-features)
- [WIP](#-WIP)
- [Showcase](#-showcase)
- [License](#-license)

## About 
This is my personal configuration heavily inspired by [Mysterio77](https://github.com/Misterio77/nix-config). 
🚨 It is still in WIP as i am trying to figure out how Nix and NixOS are functionning.

The system is configured with :

- **Flake** (An experimental features of NixOS)
- **Nixpkgs Unstable & stable** (As of January 2025, channel 24.11)
- **Home-manager Standalone** (To configure per users environments)

## Commands
To rebuild system level changes (by machines for instance)
```
sudo nixos-rebuild switch --flake .
```
To rebuild users environment :
```
home-manager switch --flake .#user
```

Garbage Collector :
```
nix-store --gc
```

🚨 System level need sudo permission, but in any case should you use sudo for users changes !

## WIP

### Minecraft Branch
Configuring Fabric Minecraft server with the help of [nix-minecraft](https://github.com/Infinidoge/nix-minecraft).

### Main branch
- Implementing Neovim personal configuration ([Nixvim](https://github.com/nix-community/nixvim) or [Nixcats](https://github.com/BirdeeHub/nixCats-nvim?tab=readme-ov-file#getting-started))
- Hyprland wip (maybe in another branch later)
### Mazachi
Friend configuration, differents users test

### NvChad
Temporary use of [NvChad on Nix](https://github.com/nix-community/nix4nvchad) while building my own custom Neovim configuration
