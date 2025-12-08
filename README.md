# dotmprod

**Work in Progress**

dotfiles and configs for my music production machine.

## Install

*After copying the sources.list and keyrings, make sure the files are
owned by root*

Base programs:

    # apt install xserver-xorg-core xinit x11-xserver-utils xdg-utils \
    xdg-user-dirs alsa-utils doas ufw vim git

Minimal xfce:

    # apt install --no-install-recommends xfwm4 xfce4-panel xfce4-session \
    xfce4-settings xfce4-notifyd xfdesktop4 xfce4-whiskermenu-plugin \
    xfce4-appfinder xfce4-terminal xfce4-taskmanager xfce4-genmon-plugin \
    xcfe4-clipman-plugin xfce4-screenshooter thunar mousepad mate-polkit \
    volumeicon-alsa ristretto thunar-archive-plugin arc-theme \
    papirus-icon-theme

Extra software:

    # apt install brave-browser gimp

Install [Reaper](https://www.reaper.fm/download.php)

Install qjackctl

    # apt install qjackctl

Install wine-staging 9.21 (the last version reported to work flawlessly with yabridge):

    # dpkg --add-architecture i386
    # apt install --install-recommends winehq-staging=9.21~trixie-1
    # apt-mark hold wine-staging wine-staging-amd64 wine-staging-i386 winehq-staging
    $ winetricks dxvk

