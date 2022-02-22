-- lsp.lua --

local cmp     = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")
local lsp     = require("lspconfig")
local null_ls = require("null-ls")

local check_backspace = function()
    local col = vim.fn.col "." - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

-- "nvim-cmp" setup
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
                --callback()
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
    }
}


-- "nvim-lsp" mappings
local on_attach = function(client)
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    
    map("n", "<Leader>d", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    --map("n", "<Leader>g", "<cmd>lua vim.lsp.buf.definition()<CR>",  opts)
    map("n", "<Leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>",       opts)
end

-- "nvim-lsp" setup
lsp.pyright.setup{ -- Python
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic"
            }
        }
    }
} 


-- "null-ls" setup
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.pylama,
    },
})
