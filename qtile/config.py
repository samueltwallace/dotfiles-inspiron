# Discontinued, as I can't use qtile with KDE Plasma as far as I can tell.
from libqtile.config import Key, Screen, Group, Drag, Click
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook

mod = "mod4"

keys = [
        Key([mod,"shift"], "c", lazy.restart()),
        Key([mod],"Return", lazy.spawn("alacritty")),
        Key([mod,"shift"], "Return", lazy.spawn("gtk-launch $(xdg-settings get default-web-browser)")),
        Key([mod,"shift"],"q",lazy.window.kill()),
        Key([],"XF86AudioRaiseVolume",lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%")) #And So on...








        ]
