local diagnostics = {
    Error = "",
    Warning = "",
    Information = "",
    Question = "",
    Hint = "",
}

local M = {}
M.setup = function()
  local signs = {
    { name = "DiagnosticSignError", text = diagnostics.Error },
    { name = "DiagnosticSignWarn",  text = diagnostics.Warning },
    { name = "DiagnosticSignHint",  text = diagnostics.Hint },
    { name = "DiagnosticSignInfo",  text = diagnostics.Information },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = true,
      style = "minimal",
      --border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }
  vim.diagnostic.config(config)
end

return M
