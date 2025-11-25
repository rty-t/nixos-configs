{
  programs.gh = {
    enable = true;
    hosts."github.com".user = "rty-t";
    settings = {
      editor = "nvim";
      browser = "zen";
    };
  };
}
