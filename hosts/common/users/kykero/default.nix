{
  pkgs,
  config,
  lib,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  users.mutableUsers = true;
  users.users.kykero = {
    isNormalUser = true;
    extraGroups = ifTheyExist [
      "wheel"
    ];
    
    packages = with pkgs; [
	home-manager
	firefox
	nano
    ];
 

 };


  


}
