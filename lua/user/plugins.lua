local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
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
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
	use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "ggandor/leap.nvim"
	use "vim-airline/vim-airline"
	use "nvim-tree/nvim-web-devicons"
	use "nvim-tree/nvim-tree.lua"
	use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
	use "akinsho/toggleterm.nvim"

	-- Colorschemes
	use "folke/tokyonight.nvim"
	use "morhetz/gruvbox"
	use "ayu-theme/ayu-vim"
	use "bluz71/vim-nightfly-guicolors"
	use "pineapplegiant/spaceduck"
	use "challenger-deep-theme/vim"

	-- Startup
	use "glepnir/dashboard-nvim"

	-- cmp
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "saadparwaiz1/cmp_luasnip"
	use "hrsh7th/cmp-nvim-lsp"
	use "windwp/nvim-autopairs"
	use "numToStr/Comment.nvim"

	-- snippets
	use "L3MON4D3/LuaSnip"
	-- use "sirver/ultisnips"
	-- use "norcalli/snippets.nvim"
	use "honza/vim-snippets"
	use "rafamadriz/friendly-snippets"


	-- use "hashivim/vim-terraform"
	
	-- LSP
	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"
	use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

	-- Telescope
	use "nvim-telescope/telescope.nvim"
	use "BurntSushi/ripgrep"

	  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"
	use "JoosepAlviste/nvim-ts-context-commentstring"

	-- Git
  use "lewis6991/gitsigns.nvim"
	
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
