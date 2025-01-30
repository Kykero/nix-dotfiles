{ pkgs, inputs, ... }: {
  

  imports = [

    ./hardware-configuration.nix
    ../common/global/bundle.nix
    ../common/global/plasma6.nix
    ../common/users/kykero

    inputs.hardware.nixosModules.common-cpu-amd
    inputs.hardware.nixosModules.common-gpu-amd


  ];

  environment.systemPackages = with pkgs; [

  ];

  networking = {
    hostName = "nazuna";
    useDHCP = false;
  };

  programs = {

};

  system.stateVersion = "22.05";
}

