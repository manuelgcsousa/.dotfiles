from libqtile import bar, widget
from libqtile.config import Screen

from .groups import GROUP_NAMES


widget_defaults = dict(font="sans", fontsize=12, padding=3)

extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    highlight_method="block",
                    visible_groups=GROUP_NAMES[:-1]
                ),
                widget.WindowName(padding=10),

                widget.Sep(padding=15),

                widget.TextBox(fmt="VOL", foreground="#404040"),
                widget.Volume(update_interval=0),

                widget.Sep(padding=15),

                widget.TextBox(fmt="BAT", foreground="#404040"),
                widget.Battery(format="{percent:2.0%}"),

                widget.Sep(padding=15),

                widget.Clock(format="%a, %b %d :: %H:%M"),

                widget.Sep(padding=15),

                widget.Systray(),

                widget.Spacer(length=10)
            ],
            size=24,
            background="#222222"
        )
    )
]
