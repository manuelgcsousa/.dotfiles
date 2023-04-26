local packer = require("packer")

-- make packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float{ border = "single" }
    end
  }
}

return packer.startup(function(use)
  -- package manager
  use "wbthomason/packer.nvim"
  
  -- core lua dev
  use "nvim-lua/plenary.nvim"

  -- startup
  use "goolord/alpha-nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"

  -- completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lsp"
  use "onsails/lspkind-nvim"

  -- colorschemes
  use "tomasiser/vim-code-dark"
  use "Mofiqul/vscode.nvim"
  use "navarasu/onedark.nvim"
  use "kyazdani42/nvim-web-devicons"

  -- tree and bars
  use "kyazdani42/nvim-tree.lua"
  use "nvim-lualine/lualine.nvim"

  -- utils
  use "jiangmiao/auto-pairs"
  use "lewis6991/gitsigns.nvim"
  use "akinsho/git-conflict.nvim"
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

  -- shitshow
  use "alec-gibson/nvim-tetris"
end)
