local status_ok, themery = pcall(require, "themery")
if not status_ok then
	return
end
themery.setup({
	themes = {
		"catppuccin-mocha",
		"kanagawa-wave",
		"tokyonight-moon",
		"gruvbox-material",
		"everforest",
		"oxycarbon",
		"nord",
	},
	themeConfigFile = "~/.config/nvim/lua/user/colorscheme.lua", -- Described below
	livePreview = true, -- Apply theme while browsing. Default to true.
})
-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme gruvbox-material")
-- end themery block
