-- setup neovim lua dev before 'lspconfig'
require('neodev').setup{}

local lsp = require('lspconfig')

-- Python
lsp.pyright.setup{
  settings = {
    python = {
      analysis = {
        typeCheckingMode = 'basic'
      }
    }
  }
}

-- Golang
lsp.gopls.setup{}

-- Terraform
lsp.terraformls.setup{}

-- Lua
lsp.lua_ls.setup{
  settings = {
    Lua = {
      completion = {
        callSnippet = 'Replace'
      },
      workspace = {
        checkThirdParty = false,
      },
    }
  }
}
