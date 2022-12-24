"for opening in full window
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
nnoremap <leader>- :set ri<cr>80A-<esc>81<bar>d$0:set nori<cr>
"-------------------------------------------------------------------------------
">>>>>plug start>>>>>>>> 
call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
"directory structure plugin"
Plug 'scrooloose/nerdtree'
"vim fugitive for git logs
Plug 'tpope/vim-fugitive'
"multiple cusrsors like sublime"
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"auto completion of pairs"
Plug 'jiangmiao/auto-pairs'
"commentor"
Plug 'scrooloose/nerdcommenter'
"adding icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
"startup script for vim
Plug 'mhinz/vim-startify'
"git-gutter
Plug 'airblade/vim-gitgutter'
"intelliscense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"surroundings
Plug 'tpope/vim-surround'
"color-scheme
Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
"indentation guidelines
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
""minimap
"Plug 'wfxr/minimap.vim'
Plug 'psliwka/vim-smoothie'
"status line
Plug 'vim-airline/vim-airline'
"css-color support
"Plug 'ap/vim-css-color'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
""fuzzy finedr using fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"auto closing tags - web development
Plug 'alvan/vim-closetag'
"color picker for vim
Plug 'KabbAmine/vCoolor.vim'
"notes for vim
Plug 'vimwiki/vimwiki'
"easr align
Plug 'junegunn/vim-easy-align'
"tree sitter for better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"latex completion
Plug 'lervag/vimtex'
call plug#end()
">>>>>>>>>>plug end >>>>>>>>>>>>>
">>>>>>>>>>>>sane defaults>>>>>>>>>>>>>>>>>
source $HOME/.config/nvim/vim-scripts/defalts.vim

">>>>>>>>>>>>>>>>>>>>>adding colorscheme
source $HOME/.config/nvim/vim-scripts/color-settings.vim
"set termguicolors
""let g:lightline = {
""\ 'colorscheme': 'jellybeans',
""\ }
""colorscheme onedark
""colorscheme vividchalk
""let g:gruvbox_transp_bg = 1
""let g:gruvbox_italicize_strings = 1
"colorscheme solarized8_flat
"set background=dark
"let g:Hexokinase_highlighters = [ 'backgroundfull' ]
"hi Normal guibg=NONE ctermbg=NONE 
""hi DiffAdd gui=NONE guifg=green guibg=black
">>>>>>>>>custom key mappings start>>>>>>>>"
nnoremap <f1> :set hls <CR>
"nnoremap <f2> :split term://zsh <CR>
nnoremap <f2> :term <CR>
nnoremap <f3> :UndotreeToggle <CR>
nnoremap <f4> :NERDTreeToggle<CR>
nnoremap<C-z> :vertical split<CR>
nnoremap<S-x> :vertical resize +5<CR>
nnoremap<C-x> :vertical resize -5 <CR>
nnoremap<C-q> :GitGutterToggle<CR>
nnoremap <leader>b :Buffers <CR>
nnoremap <leader>h :wincmd h <CR>
nnoremap <leader>j :wincmd j <CR>
nnoremap <leader>k :wincmd k <CR>
nnoremap <leader>l :wincmd l <CR>
"nnoremap <leader>f2 :set autochdir <CR>
inoremap <C-s>  <ESC>:w <CR>
nnoremap <C-s> :w <CR>
"fuzzy finding mappings 
nnoremap<C-t> :Files <CR>
nnoremap<C-p> :Rg <CR>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap<leader>gc :Git commit <CR> 
nnoremap<leader>gch :Git checkout
"nnoremap<leader>gd :Git diff<CR> 
nnoremap<leader>gw :Gvdiffsplit<CR> 
nnoremap<leader>gs :G<CR>
nnoremap<leader>gp :Git push<CR>
nnoremap<leader>g1 :diffget //2<CR>
nnoremap<leader>g0 :diffget //3<CR>
nnoremap<C-a> <ggVG 
">>>>>>>>>> mappings end>>>>>>>>>>>>>>>"

">>>>>>>>>>let mappings start>>>>>>>>
"let g:minimap_width = 10
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1
">>>>>>>>>>>auto commands start>>>>>>>>>>>>>>
" Persist cursor
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif
"find root of the project
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction
command! ProjectFiles execute 'Files' s:find_git_root()
"map <C-p> :ProjectFiles<CR>
" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
"autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR><C-W>
"Auto complettion using coc
source $HOME/.vim/plug-config/coc.vim
"easy align commands
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" gui cursor change
augroup RestoreCursorShapeOnExit
    autocmd!
    autocmd VimLeave * set guicursor=a:ver20
augroup END
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

luafile $HOME/.config/nvim/lua/treesitter.lua
"Autocmd for g++
autocmd BufWritePost *11.cpp !g++ % -lGL -lcrypto -lglut -lGLU &&  ./a.out
"autocmd filetype cpp nnoremap <f5> :w <bar> !g++ % -lcrypto -lGL -lglut -lGLU -o %:r && ./%:r <cr> 
"Autocmd for latex
autocmd BufWritePost *.tex !pdflatex %
