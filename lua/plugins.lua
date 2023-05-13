local status, packer = pcall(require, 'packer')
if (not status) then 
  print("Packer is not installed")
  return 
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'hoob3rt/lualine.nvim' -- StatusLine
  use 'onsails/lspkind-nvim' -- vscode like pictogram
  use 'hrsh7th/cmp-buffer' --nvim-cmp source
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp' -- Completion
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
 
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'windwp/nvim-autopairs'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'

  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'

  use 'dinhhuy258/git.nvim'

  use 'dart-lang/dart-vim-plugin'

  use 'natebosch/dartlang-snippets'
  
  use 'lervag/vimtex'

  use 'MunifTanjim/nui.nvim'

  use {'neoclide/coc.nvim', branch='release'}
  use { 'nvim-tree/nvim-tree.lua',
    require('nvim-tree').setup()
  }
  use{
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    }
  }
  -- with packer
  use 'mfussenegger/nvim-dap'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ' 
  use 'glepnir/lspsaga.nvim' 
  use 'szw/vim-maximizer'
  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation
   end)
