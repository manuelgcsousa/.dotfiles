local cmp     = require('cmp')
local lspkind = require('lspkind')

local check_backspace = function()
  local col = vim.fn.col '.' - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s'
end

cmp.setup{
  mapping = {
    ['<CR>'] = cmp.mapping.confirm{ select = true },

    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, {
      'i',
      's'
    }),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, {
      'i',
      's'
    })
  },

  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      maxwidth = 50
    })
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer', keyword_length = 5 }
  },

  experimental = {
    ghost_text = true
  }
}
