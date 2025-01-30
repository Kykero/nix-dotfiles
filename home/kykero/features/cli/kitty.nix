{
  pkgs,
  config,
  lib,
  ...
}:

{

  programs.kitty = {
    enable = true;
    themeFile = "rose-pine";
    settings = {
      background_opacity = 0.9;
      confirm_os_window_close = 0;
    };
  };

}
