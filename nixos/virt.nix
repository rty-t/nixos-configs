{
  programs.gnome-boxes.enable = true;

  users.groups.libvirtd.members = [ "pyndys" ];

  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
    };
}
