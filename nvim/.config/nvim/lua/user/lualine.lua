local lualine = require("lualine")

--require("lualine").setup{
--  options = {
--    icons_enabled = true,
--    theme = "onedark",
--    component_separators = { left = "|", right = "|"},
--    section_separators = "",
--    disabled_filetypes = {},
--    always_divide_middle = true,
--    globalstatus = true
--  },
--  sections = {
--    lualine_c = {
--      { "filename", path = 1 }  -- relative path
--    },
--    lualine_x = { "encoding", "filetype" }
--  }
--}

-- colors
local colors = {
  bg       = "#252526",
  blue     = "#64AEE6",
  gray     = "#626262",
  magenta  = "#c678dd",
  green    = "#98be65",
  red      = "#ec5f67"
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end
}

-- lualine base configs
local config = {
  options = {
    component_separators = "",
    section_separators = "",
    theme = {
      -- default c theme highlight (lualine_c & lualine_x)
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } }
    }
  },
  sections = {
    -- remove defaults
    lualine_a = {}, lualine_b = {}, lualine_y = {}, lualine_z = {},
    -- fill later
    lualine_c = {}, lualine_x = {}
  },
  inactive_sections = {
    -- remove all defaults
    lualine_a = {}, lualine_b = {}, lualine_c = {},
    lualine_x = {}, lualine_y = {}, lualine_z = {}
  }
}


-- insert a component in lualine_c at left section
local function insert_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- inserts a component in lualine_x ot right section
local function insert_right(component)
  table.insert(config.sections.lualine_x, component)
end


---------------
-- LEFT SIDE --
---------------

insert_left {
  function()
    return '▎'
  end,
  color = { fg = colors.blue },
  padding = { left = 0, right = 1 }
}

insert_left {
  -- mode component
  function()
    return '●'
  end,
  color = function()
    local mode_color = {
      -- normal mode
      n      = colors.green,
      no     = colors.green,
      -- visual mode
      v      = colors.magenta,
      [''] = colors.magenta,
      V      = colors.magenta,
      -- insert mode
      i      = colors.blue,
      ic     = colors.blue,
      -- command
      c      = colors.red,
      cv     = colors.red,
      ce     = colors.red,
      -- shell
      ['!']  = colors.red,
      -- terminal
      t      = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1, gui = "bold" }
}

insert_left {
  "filetype",
  cond = conditions.buffer_not_empty,
  icon_only = true
}

insert_left {
  "filename",
  cond = conditions.buffer_not_empty,
  color = { fg = colors.grey, gui = "bold" }
}

insert_left {
  "branch",
  icon = '',
  color = { fg = colors.green, gui = "bold" }
}

insert_left {
  "location",
  color = { fg = colors.grey }
}


----------------
-- RIGHT SIDE --
----------------

insert_right {
  "fileformat",
  icons_enabled = false,
  color = { fg = colors.grey }
}

insert_right {
  "o:encoding",
  cond = conditions.hide_in_width,
  color = { fg = colors.grey }
}

insert_right {
  function()
    return string.format("%s", vim.bo.filetype)
  end,
  --color = { fg = colors.green, gui = "bold"}
  color = function()
    local mode_color = {
      -- normal mode
      n      = colors.green,
      no     = colors.green,
      -- visual mode
      v      = colors.magenta,
      [''] = colors.magenta,
      V      = colors.magenta,
      -- insert mode
      i      = colors.blue,
      ic     = colors.blue,
      -- command
      c      = colors.red,
      cv     = colors.red,
      ce     = colors.red,
      -- shell
      ['!']  = colors.red,
      -- terminal
      t      = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()], gui = "bold" }
  end,
}

lualine.setup(config)
