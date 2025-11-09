{
  programs.git = {
    enable = true;
    settings = {
      branch.autosetuprebase = "always";
      color.ui = true;
      core.askPass = "";
      init.defaultBranch = "main";
      github.user = "rty-t";
      user.name = "rty-t";
    };
  };
}
