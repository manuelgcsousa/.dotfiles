require("bufferline").setup{
  highlights = {
    fill = {
      bg = {
        attribute = "bg",
        highlight = "TabLine"
      }
    },
    tab_close = {
      bg = {
        attribute = "bg",
        highlight = "TabLine"
      }
    },
    buffer_selected = {
      bold = true,
      italic = false
    },
  },
  options = {
    right_mouse_command = "",
    middle_mouse_command = "",
    indicator = {
      icon = "▎",
      style = "icon"
    },
    modified_icon = "●",
    close_icon = "",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        highlight = "Directory"
      }
    },
    separator_style = "thin"
  }
}
