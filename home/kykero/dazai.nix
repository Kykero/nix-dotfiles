{
  pkgs,
  ...
}:
{

  imports = [
    ./global
    ./features/desktop/common/discord.nix
    ./features/cli/git.nix
    ./features/cli/kitty.nix
  ];

  home.packages = with pkgs; [
    obsidian

  ];

}
