require("nvim-tree").setup{
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  open_on_tab = false,
  update_focused_file = {
    enable = true
  },
  view = {
    width = 45,
    side = "left",
    mappings = {
      custom_only = false,
      list = {
        { key = "<C-e>", action = "close" }
      }
    }
  }
}
