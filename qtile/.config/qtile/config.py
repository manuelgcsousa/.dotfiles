import os
import subprocess

from libqtile import hook


from settings.keys import keys, mouse
from settings.groups import groups
from settings.layouts import layouts, floating_layout
from settings.screens import screens, widget_defaults, extension_defaults

dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None
wmname = "LG3D"


@hook.subscribe.startup_once
def autostart():
    HOME = os.environ["HOME"]
    start = os.path.expanduser(f"{HOME}/.config/qtile/autostart.sh")
    subprocess.call([start])
