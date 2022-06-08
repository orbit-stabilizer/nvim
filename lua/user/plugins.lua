local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
	display = {
    open_fn = function()
    	return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Base plugins
  use 'wbthomason/packer.nvim'          -- Have packer manage itself
  use 'nvim-lua/plenary.nvim'           -- Useful lua functions used ny lots of plugins
  use 'numToStr/Comment.nvim'           -- For comments

	-- Colorschemes
	use 'navarasu/onedark.nvim'

	-- Autocomplete
  use 'hrsh7th/nvim-cmp'                -- Completion plugin
  use 'hrsh7th/cmp-buffer'              -- Buffer completion
  use 'hrsh7th/cmp-path'                -- Path completion
  use 'hrsh7th/cmp-cmdline'             -- Command line completion
  use 'saadparwaiz1/cmp_luasnip'        -- Snippet completion
  use 'hrsh7th/cmp-nvim-lsp'            -- LSP snippets

  -- File exploration
	use 'kyazdani42/nvim-tree.lua' 	      -- nvim tree
	use 'kyazdani42/nvim-web-devicons'    -- Icons for tree

	-- Snippets
	use 'L3MON4D3/LuaSnip'                -- Snippet engine
	use 'rafamadriz/friendly-snippets'    -- Bunch of snippets

  -- LSP
  use 'neovim/nvim-lspconfig'           -- Enable LSP
  use 'williamboman/nvim-lsp-installer' -- Simple to use language server installer

  -- Editing QoL
  use 'windwp/nvim-autopairs'           -- Autocloses brackets

  -- File navigation
  use 'nvim-telescope/telescope.nvim'
  -- use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
     'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate',
  }
  use 'p00f/nvim-ts-rainbow'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  -- use 'nvim-treesitter/playground'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Status bar
  use 'feline-nvim/feline.nvim'
  use 'SmiteshP/nvim-gps'

  -- Terminal
  use "akinsho/toggleterm.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
