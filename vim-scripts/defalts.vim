syntax on
let mapleader=" "
set clipboard=unnamedplus
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set relativenumber
set number
set number relativenumber
set expandtab
set smartindent
set smartcase
set ignorecase
set nobackup
set noswapfile
set undodir=~/.cache/nvim/undo
set undofile
set incsearch
set exrc " for setting up different vimrcs "
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
autocmd FileType tex set spell
highlight LineNr ctermfg=grey
"hi Pmenu ctermfg=250 ctermbg=235  guifg=#bcbcbc guibg=#262626
"hi PmenuSel ctermfg=250 ctermbg=131  guifg=#bcbcbc guibg=#af5f5f
set hidden  "hides buffer instead of closing"
set mouse=a
set updatetime=100 "updating git gutter fast"
"""""too Importnat cross platfomr file saving"""""
set nofixendofline
set signcolumn
hi signcolumn ctermbg=NONE guibg=NONE
"set noshowmode
"set guifont=*
"set autochdir
set scrolloff=18
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=grey
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=7
