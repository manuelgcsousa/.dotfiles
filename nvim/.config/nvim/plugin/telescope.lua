require("telescope").setup{
  defaults = {
    layout_strategy = "horizontal",
    path_display = { "truncate" }
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
}
