{
  programs.git = {
    enable = true;
    userName = "rty-t";
    userEmail = "email@forconfig";
    extraConfig = {
      branch.autosetuprebase = "always";
      color.ui = true;
      core.askPass = "";
      github.user = "rty-t";
      init.defaultBranch = "main";
    };
  };
}
