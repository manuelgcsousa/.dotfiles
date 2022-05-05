-- lualine.lua --

require("lualine").setup{
  options = {
    icons_enabled = true,
    theme = "onedark",
    component_separators = { left = '|', right = '|'},
    section_separators = "",
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = true
  },
  sections = {
    lualine_c = {
      { "filename", path = 1 }  -- relative path
    },
    lualine_x = { "encoding", "filetype" }
  }
}
