{
    services.zapret = {
      enable = true;
      params = [
        "--filter-tcp=80 <HOSTLIST>"
        "--dpi-desync=fake,fakedsplit"
        "--dpi-desync-autottl=2"
        "--dpi-desync-fooling=md5sig"
        "--new"
        "--filter-tcp=443"
        "--dpi-desync=fake,multidisorder"
        "--dpi-desync-fooling=badseq"
        "--dpi-desync-split-pos=midsld"
        "--dpi-desync-fake-tls=0x00000000"
      ];
      whitelist = [
        # Youtube
        "youtube.com"
        "youtu.be"
        "ggpht.com"
        "ytimg.com"
        "i.ytimg.com"
        "i9.ytimg.com"
        "yt3.ggpht.com"
        "l.google.com"
        "play.google.com"
        "youtubei.googleapis.com"
        "wide-youtube.l.google.com"
        "nhacmp3youtube.com"
        "googleusercontent.com"
        "yt3.googleusercontent.com"
        "googleapis.com"
        "googlevideo.com"
        "youtubei.googleapis.com"
        "1e100.net"
         
        # Discord
        "dis.gd"
        "discord-attachments-uploads-prd.storage.googleapis.com"
        "discord.app"
        "discord.co"
        "discord.com"
        "discord.design"
        "discord.dev"
        "discord.gift"
        "discord.gifts"
        "discord.gg"
        "discord.media"
        "discord.new"
        "discord.store"
        "discordapp.com"
        "discordcdn.com"
        "discordmerch.com"
        "discordpartygames.com"
        "discordsays.com"
        "discordsez.com"
        "discord-activities.com"
        "discordactivities.com"
        "stable.dl2.discordapp.net"
      ];
    };
}