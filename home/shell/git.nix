{
  programs.git = {
    enable = true;
    settings = {
      branch.autosetuprebase = "always";
      color.ui = true;
      core.askPass = "";
      init.defaultBranch = "main";
      github.user = "rty-t";
      user = {
        name = "rty-t";
        email = "mikumiku@beam"; # Place with your really email, Hatsune Miku the best btw
      };
    };
  };
}
