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
    userEmail = "notamail@test.com";
    package = pkgs.gitAndTools.gitFull;
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory ="/home/kykero/dotfiles";
    };
  };


}
