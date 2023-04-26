require("telescope").setup{
  defaults = {
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    layout_strategy = "horizontal",
    path_display = { "truncate" },
    file_ignore_patterns = {".git/", "node_modules"},
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
}
