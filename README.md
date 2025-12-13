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
    volumeicon-alsa ristretto thunar-archive-plugin

Extra software:

    # apt install arc-theme papirus-icon-theme brave-browser gimp

Install [Reaper](https://www.reaper.fm/download.php)

Install qjackctl

    # apt install --no-install-recommends qjackctl qt6-gtk-platformtheme qt6-svg-plugins
    # apt install jack-example-tools

Install wine-staging 9.21 (the last version reported to work flawlessly with yabridge).

**Outright installing version 9.21 gave me some dependency errors, and the solution is to
install the latest version, whatever that is, and then downgrade.**

    # dpkg --add-architecture i386
    # apt install --install-recommends winehq-staging
    # apt install winehq-staging=9.21~trixie-1 wine-staging=9.21~trixie-1 wine-staging-amd64=9.21~trixie-1 wine-staging-i386=9.21~trixie-1
    # apt-mark hold winehq-staging wine-staging wine-staging-amd64 wine-staging-i386

Ensure the `contrib` repo is enabled then:

    $ winetricks dxvk

Install yabridge and VSTs.

Profit.
