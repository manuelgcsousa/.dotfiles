local dashboard = require('alpha.themes.dashboard')
require('alpha').setup(dashboard.config)

local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
  b.opts.hl_shortcut = 'Macro'
  return b
end

dashboard.section.header.val = {
  "                                                    ",
  " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                    "
}

dashboard.section.buttons.val = {
  button('e',   '  New file',  '<cmd>ene <CR>'),
  button('C-f', '  Find file', '<cmd>lua require("telescope.builtin").find_files()<CR>'),
  button('C-g', '  Find word', '<cmd>lua require("telescope.builtin").live_grep()<CR>'),
  button('c',   '  Config',    ':e $HOME/.config/nvim/ <CR>'),
  button('q',   '  Quit',      ':qa<CR>'),
}

local function footer()
  return 'manuelgcsousa.github.io'
end
dashboard.section.footer.val = footer()
