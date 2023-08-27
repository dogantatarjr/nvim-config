local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    return
end
-- Install plugins here --
lazy.setup({
	"wbthomason/packer.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-lua/popup.nvim",
	"windwp/nvim-autopairs",
	"numToStr/Comment.nvim",
	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",
	"akinsho/bufferline.nvim",
	"moll/vim-bbye",
	"akinsho/toggleterm.nvim",
	"nvim-lualine/lualine.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"goolord/alpha-nvim",
	"antoinemadec/FixCursorHold.nvim",
    "folke/which-key.nvim",
    "lambdalisue/suda.vim",
    "MaximilianLloyd/ascii.nvim",
    "MunifTanjim/nui.nvim",
    "lewis6991/impatient.nvim",
    "ahmedkhalf/project.nvim",
    "mbbill/undotree",

	-- Colorschemes
	"folke/tokyonight.nvim",

	-- CMP stuff
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",

	-- Snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- LSP
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim",

	-- Telescope
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-media-files.nvim",

	-- Treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	"p00f/nvim-ts-rainbow",
	"nvim-treesitter/playground",
	"JoosepAlviste/nvim-ts-context-commentstring",

	-- Git
	"lewis6991/gitsigns.nvim",
})
