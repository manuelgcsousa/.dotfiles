local packer = require("packer")

-- make packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float{ border = "rounded" }
    end
  }
}

return packer.startup(function(use)
  -- package manager
  use "wbthomason/packer.nvim"
  
  -- core lua dev
  use "nvim-lua/plenary.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"

  -- completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lsp"
  use "onsails/lspkind-nvim"

  -- colorschemes
  use "joshdick/onedark.vim"
  use "tomasiser/vim-code-dark"
  
  -- tree and bars
  use "kyazdani42/nvim-tree.lua"
  use "romgrk/barbar.nvim"
  use "nvim-lualine/lualine.nvim"
  use "kyazdani42/nvim-web-devicons"

  -- utils
  use "jiangmiao/auto-pairs"
  use "lewis6991/gitsigns.nvim"
  use "tpope/vim-surround"

  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{ "nvim-lua/plenary.nvim" }}
  }
end)
