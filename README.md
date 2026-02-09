### My NixOS Configuration

This is my personal configuration heavily inspired by [Mysterio77](https://github.com/Misterio77/nix-config). 
🚨 It is still in WIP as i am trying to figure out how Nix and NixOS are functionning.

The system is configured with :

- **Flake** (An experimental features of NixOS)
- **Nixpkgs Unstable & stable** 
- **Home-manager Standalone** (To configure per users environments [subject to change])

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
nix-store --gc /  sudo nix-collect-garbage -d (to remove older generations)
```

🚨 System level need sudo permission, but in any case should you use sudo for users changes !

### Main branch
- Stable diffusion
- [Nvf](https://github.com/NotAShelf/nvf)

