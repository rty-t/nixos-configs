{ lib, ...}:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = true;
      character = {
        success_symbol = ">";
        error_symbol = "x";  
      };
      format = lib.concatStrings [
        ">>"
        "   "
        "$directory"
        "$git_branch"
        "$git_status"
        "\n$character"
      ];
   };
  };
}
