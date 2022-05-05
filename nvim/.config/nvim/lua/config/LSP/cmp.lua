-- cmp.lua --

local cmp     = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

local check_backspace = function()
    local col = vim.fn.col "." - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

cmp.setup{
    snippet = {
      expand = function(args)
          luasnip.lsp_expand(args.body)
      end,
    },

    mapping = {
        ["<CR>"] = cmp.mapping.confirm{ select = true },

        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expandable() then
                luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif check_backspace() then
                fallback()
            else
                fallback()
            end
        end, {
            "i",
            "s"
        }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
    },

    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            maxwidth = 50,
        })
    },

    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" }
    },

    window = {
        documentation = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        }
    },

    experimental = {
        ghost_text = true,
    },
}
