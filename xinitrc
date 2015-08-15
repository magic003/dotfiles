#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# settings for external monitor
xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto
xrandr --output VGA-0 --off --output LVDS-1-0 --mode 1366x768 --pos 554x1080 --rotate normal --output VGA-1-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"

ibus-daemon -x -d

# exec gnome-session
# exec startkde
exec startxfce4
# ...or the Window Manager of your choice
