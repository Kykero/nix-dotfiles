{lib, ...}: {
  i18n = {
    defaultLocale = lib.mkDefault "fr_FR.UTF-8";
    extraLocaleSettings = {
      LC_TIME = lib.mkDefault "fr_FR.UTF-8";
    };
    supportedLocales = lib.mkDefault [
      "fr_FR.UTF-8/UTF-8"
      "fr_FR.UTF-8/UTF-8"
    ];
  };
  location.provider = "geoclue2";
  time.timeZone = lib.mkDefault "Europe/Paris";
}
