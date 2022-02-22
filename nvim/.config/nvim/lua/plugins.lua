-- plugins.lua --

local packer = require("packer")

-- "packer.nvim" popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- "packer.nvim" plugins
return packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use "L3MON4D3/LuaSnip"
    use "fladson/vim-kitty"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/nvim-cmp"
    use "nvim-lua/plenary.nvim"
    use "jose-elias-alvarez/null-ls.nvim"
    use "joshdick/onedark.vim"
    use "kyazdani42/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "neovim/nvim-lspconfig"
    use "nvim-lualine/lualine.nvim"
    use "onsails/lspkind-nvim"
    use "romgrk/barbar.nvim"
    use "tpope/vim-surround"
end)
