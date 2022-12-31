vim.g.mapleader = ","

require "core.options"
require "core.mappings"

require "packer.config"

require "lsp.config"
require "lsp.handlers".setup()
