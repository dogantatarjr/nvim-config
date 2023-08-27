local o = { noremap = true, silent = true }
local to = {silent = true}
local k = vim.keymap.set
k("", "<Space>", "<Nop>", o)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Normal --
-- Navigation --
k("n", "<C-h>", "<C-w>h", o)
k("n", "<C-j>", "<C-w>j", o)
k("n", "<C-k>", "<C-w>k", o)
k("n", "<C-l>", "<C-w>l", o)

k("n", "<leader>e", ":Lex 30<CR>", o)
-- Resizing --
k("n", "<C-Up>", ":resize +2<CR>", o)
k("n", "<C-Down>", ":resize -2<CR>", o)
k("n", "<C-Left>", ":vertical resize -2<CR>", o)
k("n", "<C-Right>", ":vertical resize +2<CR>", o)
-- Buffer Navigation --
k("n", "<S-l>", ":bnext<CR>", o)
k("n", "<S-h>", ":bprevious<CR>", o)

-- Insert --
-- Fast esc --
k("i", "jk", "<ESC>", o)

-- Visual --
-- Stay in indentation mode --
k("v", "<", "<gv", o)
k("v", ">", ">gv", o)
-- Move text up and down --
k("v", "<A-j>", ":m .+1<CR>==", o)
k("v", "<A-k>", ":m .-2<CR>==", o)
-- Dont yank when pasted above --
k("v", "p", '"_dP', o)

-- Visual Block --
-- Move text up and down --
k("x", "J", ":move '>+1<CR>gv-gv", o)
k("x", "K", ":move '<-2<CR>gv-gv", o)
k("x", "<A-j>", ":move '>+1<CR>gv-gv", o)
k("x", "<A-k>", ":move '<-2<CR>gv-gv", o)

-- Terminal --
-- Better terminal navigation
k("t", "<C-h>", "<C-\\><C-N><C-w>h", to)
k("t", "<C-j>", "<C-\\><C-N><C-w>j", to)
k("t", "<C-k>", "<C-\\><C-N><C-w>k", to)
k("t", "<C-l>", "<C-\\><C-N><C-w>l", to)

-- Telescope --
k("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", o)
k("n", "<c-t>", "<cmd>Telescope live_grep<cr>", o)
