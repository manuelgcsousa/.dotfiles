-- null-ls.lua --

local null_ls = require("null-ls")

-- "null-ls" setup
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.pylama,
    },
})
