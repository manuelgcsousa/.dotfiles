local lsp = require("lspconfig")

local on_attach = function(client)
  local map = vim.api.nvim_set_keymap
  local opts = { noremap = true, silent = true }

  -- "lua/user/mappings.lua"
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

-- Golang
lsp.gopls.setup{
  on_attach = on_attach
}
