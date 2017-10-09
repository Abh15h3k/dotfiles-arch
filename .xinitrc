#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
# for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
#  [ -x "$f" ] && . "$f"
#done
#unset f

setxkbmap -option "caps:ctrl_modifier" &

feh --bg-fill $HOME/Pictures/sleepyhallow.jpg

# # Loop
# while true
# do
#     # Set root title
#     sh .xsetroot.sh

#     # Check battery level
#     BATT=$( acpi -b | sed 's/.*[charging|unknown], ([0-9]*)%.*/1/gi' )
#     STATUS=$( acpi -b | sed 's/.*: ([a-zA-Z]*),.*/1/gi' )
#     if ([ $BATT -le 5 ] && [ $STATUS == 'Discharging' ]); then
#         # Beep
#         echo -e "07" >/dev/tty10 && sleep 0.2
#         echo -e "07" >/dev/tty10 && sleep 0.2
#         echo -e "07" >/dev/tty10 && sleep 0.2
#         # Blink
#         echo 'on' > /proc/acpi/ibm/light && sleep 1
#         echo 'off' > /proc/acpi/ibm/light
#     fi

#     # Update every 10s
#     sleep 10s
# done &

# exec $HOME/dwm/dwm

#$HOME/.confg/bar/bar.sh &
#$HOME/.config/lemonbar/lemonbar.sh &

sxhkd &
exec herbstluftwm --locked
#exec $HOME/2bwm/2bwm

