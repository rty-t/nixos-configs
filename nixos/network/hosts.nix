{pkgs, ...}: {
  networking.extraHosts = builtins.readFile (
    pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/ImMALWARE/dns.malw.link/master/hosts";
      sha256 = "sha256-tUSp2ECqKipve1eDsH3A8Yz8WB5Ib44os962n6mKbWs=";
    }
  );
}
