{pkgs, ...}: {
  networking.extraHosts = builtins.readFile (
    pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/ImMALWARE/dns.malw.link/master/hosts";
      sha256 = "sha256-cJV35H+qPshrDN8NTWImuAdoLKD+YnZua+/Ng6/PeYo=";
    }
  );
}
