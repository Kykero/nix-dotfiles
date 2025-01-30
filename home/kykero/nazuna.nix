{
  pkgs,
  ...
}: {
  imports = [
    ./global
    ./features/desktop/common
    ./features/cli/git.nix
    ./features/cli/neovim/default.nix
    ./features/cli/kitty.nix

  ];

  home.packages = with pkgs; [
    obsidian
  ];


}
