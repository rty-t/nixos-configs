{config, pkgs, ... }:

{
  programs.dconf.enable = true;
  
  users.users.pyndys.extraGroups = [ "libvirtd" ];
  
  environment.systemPackages = with pkgs; [
    virt-manager
    spice 
    spice-gtk
    spice-protocol
  ];
  
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
  };
  services.spice-vdagentd.enable = true;
}
