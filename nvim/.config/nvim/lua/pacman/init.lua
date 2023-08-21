local packer = require('packer')

-- make packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float{ border = 'single' }
    end
  }
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = {{ 'nvim-lua/plenary.nvim' }}
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'goolord/alpha-nvim',
    'kyazdani42/nvim-tree.lua',
    'nvim-lualine/lualine.nvim',
    'windwp/nvim-autopairs',
    'tpope/vim-surround',
    'lewis6991/gitsigns.nvim',
    'akinsho/git-conflict.nvim',
    -- 'stevearc/oil.nvim',
    'rcarriga/nvim-notify',
    { 'Mofiqul/vscode.nvim', commit = '64e107c31da7d73048681b77a43f5e019d850980' },
    { 'kyazdani42/nvim-web-devicons', commit = 'c3c1dc4e36969370ff589b7025df8ec2e5c881a2' }
  }

  -- LSP & Completion
  use {
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',
    'folke/neodev.nvim',

    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    { 'onsails/lspkind-nvim', commit = 'c68b3a003483cf382428a43035079f78474cd11e' }
  }
end)
