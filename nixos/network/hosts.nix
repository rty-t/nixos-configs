{pkgs, ...}: {
  networking.extraHosts = builtins.readFile (
    pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/ImMALWARE/dns.malw.link/master/hosts";
      sha256 = "sha256-K8gjqrEv6AFMGxhaS01yVI9IG3HN2QbLH1fgGgxn1+o=";
    }
  );
}
