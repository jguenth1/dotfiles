return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- tree sitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- lsp
  use {
    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    -- additional_vim_regex_highlighting = false,
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
          {'hrsh7th/cmp-path'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  -- QOL 
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use {
      'windwp/nvim-autopairs',
      config = function() require("nvim-autopairs").setup {} end
  }
  use 'tpope/vim-fugitive'

  -- Theme
  use 'navarasu/onedark.nvim'
  use 'bluz71/vim-moonfly-colors'
  use 'Mofiqul/dracula.nvim'
  use 'yorumicolors/yorumi.nvim'
  use 'rebelot/kanagawa.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  
  -- Lualine
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt=true }
  }
end)
