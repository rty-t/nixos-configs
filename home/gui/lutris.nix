{ pkgs, ...}:

{
    programs.lutris = {
    enable = true;
    defaultWinePackage = pkgs.proton-cachyos;
  };
}
