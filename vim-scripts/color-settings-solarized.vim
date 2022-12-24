set termguicolors
colorscheme solarized8_flat
set background=dark
let g:Hexokinase_highlighters = [ 'backgroundfull' ]
hi Normal guibg=NONE ctermbg=NONE 
"set signcolumn=number
hi signcolumn ctermbg=NONE guibg=NONE
"Git Diff view colors
hi DiffAdd gui=NONE guifg=NONE guibg=green
hi DiffDelete gui=NONE guifg=NONE guibg=red
hi DiffChange gui=NONE guifg=NONE guibg=orange
