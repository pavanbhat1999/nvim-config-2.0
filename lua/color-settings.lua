vim.opt.termguicolors = true
vim.g.background = 'dark'
require('tokyonight').setup {
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    }
}
vim.cmd('source $HOME/.config/nvim/vim-scripts/color-settings.vim')
