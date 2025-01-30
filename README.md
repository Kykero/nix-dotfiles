### My NixOS Configuration (WIP)

## Table of Contents
- To do

## About 
This is my personal configuration heavily inspired by [Mysterio77](https://github.com/Misterio77/nix-config). 
🚨 It is still in WIP as i am trying to figure out how Nix and NixOS are functionning.

The system is configured with :

- **Flake** (An experimental features of NixOS)
- **Nixpkgs Unstable & stable** (As of January 2025, channel 24.11)
- **Home-manager Standalone** (To configure per users environments)

## Features

| Components    | Version                 |
| --------      | ---------------------   |
| Distro        | NixOS                   |
| Terminal      | Kitty                   |
| Compositor    | Plasma KDE (Wayland)    |

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

### Main branch
- Stable diffusion

### Minecraft Branch
Configuring Fabric Minecraft server (server side mods) with the help of [nix-minecraft](https://github.com/Infinidoge/nix-minecraft).

### Nixvim or NixCats or Nvf
- [Nixvim](https://github.com/nix-community/nixvim) seems easy to setup
- [NixCats](https://github.com/BirdeeHub/nixCats-nvim) configure everything with Lua
- [Nvf](https://github.com/NotAShelf/nvf)

### Hyprland
- TODO
