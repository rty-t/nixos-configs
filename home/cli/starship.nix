{ lib, ...}:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = true;
      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[✗](bold red)"; 
      };
      format = lib.concatStrings [
        ">>"
        "[   ](bold blue)"
        "$directory"
        "$git_branch"
        "$git_status"
        "\n$character"
      ];
   };
  };
}
