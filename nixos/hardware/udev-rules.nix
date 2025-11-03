{
  services.udev = {
    enable = true;
    extraRules = ''
      ## Mchose
      KERNEL=="hidraw*", ATTRS{idVendor}=="258a", MODE="0666"

      ## VGN
      KERNEL=="hidraw*", ATTRS{idVendor}=="3554", MODE="0666"
    '';
  };
}
