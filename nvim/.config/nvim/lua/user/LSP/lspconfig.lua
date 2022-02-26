-- lspconfig.lua --

local lsp = require("lspconfig")

local on_attach = function(client)
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- "nvim/lua/mappings.lua"
    load_lsp_mappings()
end

-- Python
lsp.pyright.setup{
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic"
            }
        }
    }
}
