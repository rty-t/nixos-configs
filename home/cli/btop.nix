{
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "TTY";
      theme_background = false;
      truecolor = false;
      force_tty = false;
      vim_keys = true;
      show_uptime = true;
      show_cpu_watts = false;
      check_temp = true;
      show_cpu_freq = true;
      show_swap = false;
      show_disk = true;
      show_battery = false;
    };
  };
}
