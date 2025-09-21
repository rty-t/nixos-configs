{pkgs, ...}: {
  programs.fish.enable = true;

  users.users.pyndys = {
    isNormalUser = true;
    description = "pyndys";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.fish;
  };
}
