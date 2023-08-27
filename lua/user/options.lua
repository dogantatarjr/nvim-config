local options = {
    number = true,
    relativenumber = true,
    shiftwidth = 4,
    tabstop = 4,
    backup = false,
    cmdheight = 2,
    completeopt = {"menuone", "noselect"},
    ignorecase = true,
    mouse = "a",
    pumheight = 10,
    hlsearch = true,
    fileencoding = "utf-8",
    conceallevel = 0,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    termguicolors = true,
    swapfile = false,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    writebackup = false,
    expandtab = true,
    cursorline = true,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    guifont = "monospace:17",
    showmode = false,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.shortmess:append "c"

vim.cmd[[
    set whichwrap+=<,>,[,],h,l"
    set iskeyword+=-
    set formatoptions-=cro
]]
