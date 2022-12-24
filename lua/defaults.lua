vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = false
vim.opt.expandtab = true -- deault is false cant use with single spaces
vim.opt.tabstop = 4 -- default spaces when tab is pressed
vim.opt.softtabstop = 4  -- backspace behaviour
vim.opt.shiftwidth = 4  -- moving usinf >> <<
--vim.opt.smarttab = false -- smart tab overrides backspace behaviour
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
--vim.api.nvim_command("set noswapfile")
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/home/root99/.cache/nvim/undo"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.exrc = true
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.hidden = true
vim.opt.updatetime = 100
--for cross os files
--vim.g.nofixendofline = true
--vim.api.nvim_command("set nofixendofline")
vim.opt.scrolloff = 18
vim.opt.signcolumn = "auto"
vim.cmd [[au BufWritePre * :%s/\s\+$//e]]
vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)
