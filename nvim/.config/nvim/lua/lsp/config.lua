local lsp = require("lspconfig")

-- Python
lsp.pyright.setup{
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic"
      }
    }
  }
}

-- Golang
lsp.gopls.setup{}
