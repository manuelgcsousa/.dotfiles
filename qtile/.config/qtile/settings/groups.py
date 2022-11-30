from libqtile.config import Group, Key
from libqtile.lazy import lazy

from .keys import keys, mod


GROUP_NAMES = [
    "1", "2", "3", "4", "5",
    "6", "7", "8", "9", "0"
]


def __go_to_group(name):
    """
    Custom function to switch to group.
    This is done in order to attach certain groups to certain screens (i3-like behaviour).
    """
    def _inner(qtile) -> None:
        if len(qtile.screens) == 1:
            qtile.groups_map[name].cmd_toscreen()
            return

        if name in GROUP_NAMES[:-1]:
            qtile.focus_screen(0)
            qtile.groups_map[name].cmd_toscreen()
        else:
            qtile.focus_screen(1)
            qtile.groups_map[name].cmd_toscreen()

    return _inner


groups = [Group(name) for name in GROUP_NAMES]

for g in groups:
    keys.extend([
        Key(
            [mod], g.name, lazy.function(__go_to_group(g.name)),
            desc=f"Switch to group {g.name}"
        ),
        Key(
            [mod, "shift"], g.name, lazy.window.togroup(g.name, switch_group=False),
            desc=f"Move focused window to group {g.name}"
        )
    ])
