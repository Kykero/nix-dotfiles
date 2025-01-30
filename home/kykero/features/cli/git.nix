{
  pkgs,
  config,
  lib,
  ...
}:

{

  programs.git = {
    enable = true;
    userName = "kykero";
    package = pkgs.gitAndTools.gitFull;
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory ="/home/kykero/dotfiles";
    };
  };


}
