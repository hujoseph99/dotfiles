vim.opt.autoread = true
vim.opt.belloff = "all"
vim.opt.colorcolumn = "120"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = "indent"
vim.opt.history = 100
vim.opt.ignorecase = true
vim.opt.mouse = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.showtabline = 0
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.wildmenu = true

-- vim.g.indentLine_char = "│"
-- removed folds because session manager doesn't work well with it 
-- https://github.com/Shatur/neovim-session-manager/issues/133#issuecomment-2294162825
vim.g.sessionoptions = "blank,buffers,curdir,help,tabpages,winsize,terminal"
