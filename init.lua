vim.cmd [[autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"]]
require("plugins")
require('defaults')
require("color-settings")
require("key-mappings") -- TODO:Convert all mappings to lua standard--------------------------------
require("cmp-config")
require('lsp/python-lsp')
require("lsp/bash-lsp")
require("lsp/lua-lsp")
require("lua-line")
require("comment")
require("telescope-settings")
require("harpoon-settings")
require("treesitter")
require("filetree")
-- require("efm")
-- require("null-ls-config")
-- Need port of auto command from neovim------------------------------------------------------------
vim.cmd('source $HOME/.config/nvim/vim-scripts/auto-cmd.vim')
