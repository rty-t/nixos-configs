{ lib, ...}:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[❯](fg:green bg:black)";
        error_symbol = "[✗](fg:red bg:black)"; 
      };
      format = lib.concatStrings [
        "[0w0](fg:black bg:white)"
        "[ ](fg:blue bg:black)"
        "  "
        "$directory"
        "$git_branch"
        "$git_status"
        "$cmd_duration"
        "\n$character"
      ];
   };
  };
}
