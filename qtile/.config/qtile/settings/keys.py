import os

from libqtile.config import Key, Drag, Click
from libqtile.lazy import lazy


mod = "mod4"
HOME = os.environ["HOME"]


keys = [
    # switch between windows
    Key([mod], "Left", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "Right", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "Down", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "Up", lazy.layout.up(), desc="Move focus up"),
    
    # move windows
    Key([mod, "shift"], "Left", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "Right", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # window layouts
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc='Toggle fullscreen'),
    Key([mod], "t", lazy.window.toggle_floating(), desc='Toggle floating'),
    
    # apps
    Key([mod], "Return", lazy.spawn(f"{HOME}/.cargo/bin/alacritty"), desc="Launch terminal"),
    Key([mod], "space", lazy.spawn("dmenu_run -i -l 10 -fn 'JetBrains Mono Nerd Font:pixelsize=14'"), desc="Move window focus to other window"),

    # system
    Key([mod, "shift"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "shift"], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "shift"], "e", lazy.spawn(f"{HOME}/.config/i3/scripts/powermenu"), desc="Exit"),
    Key([mod, "control", "shift"], "l", lazy.shutdown(), desc="Logout"),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer set 'Master' 5%+ 1>/dev/null"), desc="Volume Up"),
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer set 'Master' 5%- 1>/dev/null"), desc="Volume Down"),
    Key([], "XF86AudioMute", lazy.spawn("amixer -D pulse set 'Master' 1+ toggle 1>/dev/null"), desc="Mute"),
    Key([], "XF86MonBrightnessUp", lazy.spawn("brillo -q -A 2"), desc="Laptop brightness up"),
    Key([], "XF86MonBrightnessDown", lazy.spawn("brillo -q -U 2"), desc="Laptop brightness down"),
    Key([mod, "shift"], "b", lazy.spawn(f"{HOME}/.config/qtile/scripts/monitor-bootstrap"), desc="Bootstrap monitor configurations")
]

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]
