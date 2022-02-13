-- plugins.lua --

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "L3MON4D3/LuaSnip"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/nvim-cmp"
    use "joshdick/onedark.vim"
    use "kyazdani42/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "neovim/nvim-lspconfig"
    use "nvim-lualine/lualine.nvim"
    use "onsails/lspkind-nvim"
    use "romgrk/barbar.nvim"
    use "tpope/vim-surround"
    use "fladson/vim-kitty"
end)
