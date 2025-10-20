{
  programs.git = {
    enable = true;
    settings = {
      branch.autosetuprebase = "always";
      color.ui = true;
      core.askPass = "";
      github.user = "rty-t";
      init.defaultBranch = "main";
      user = {
        name = "rty-t";
        email = "email@forconfig";
      };
    };
  };
}
