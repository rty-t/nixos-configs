{
  programs.bottom = {
    enable = true;
    settings = {
      flags = {
        hide_avg_cpu = false;
        dot_maker = false;
        rate = "1s";
        cpu_left_legend = false;
        current_usage = true;
        group_processes = false;
        basic = false;
        battery = false;
      };
    };
  };
}
