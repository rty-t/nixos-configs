{ pkgs, ...}:

{
    programs.lutris = {
    enable = true;
    defaultWinePackage = pkgs.proton-cachyos_x86_64_v3;
  };
}
