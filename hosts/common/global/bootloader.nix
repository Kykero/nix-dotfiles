{
   boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;
  boot.loader.grub.efiSupport = true;

  #Dynamic Bootloader
  boot.loader.grub.default = "saved";
  boot.loader.grub.extraEntries = "GRUB_SAVEDEFAULT=true";
}
