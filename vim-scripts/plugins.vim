call plug#begin('~/.config/.vim/plugged')
""-------------------------------------------------------------------------------
""#1 General Plugins-------------------------------------------------------------
Plug 'mbbill/undotree'
"Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround' "https://github.com/tpope/vim-surround"
Plug 'alvan/vim-closetag' "auto closing tags - web development
"Plug 'scrooloose/nerdcommenter'
Plug 'numToStr/Comment.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
" Plug 'vimwiki/vimwiki'
Plug 'junegunn/vim-easy-align'
""-------------------------------------------------------------------------------
""#2 Auto Completion Plugins-----------------------------------------------------
""Plug 'neoclide/coc.nvim', {'branch': 'release' , 'for':'java'}
""Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'github/copilot.vim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'golang/vscode-go'
Plug 'rafamadriz/friendly-snippets'
Plug 'onsails/lspkind-nvim' "icons for lsp
" Plug 'sbdchd/neoformat'
" post install (yarn install | npm install) then load plugin only for editing supported files
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
""-------------------------------------------------------------------------------
""#3 color settings and look😛---------------------------------------------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'lifepillar/vim-gruvbox8'
Plug 'lifepillar/vim-solarized8'
" Pslug 'arcticicestudio/nord-vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
""Plug 'morhetz/gruvbox'
""indentation guidelines
""minimap
Plug 'psliwka/vim-smoothie'
""Plug 'vim-airline/vim-airline'
Plug 'hoob3rt/lualine.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } "Color Display"
Plug 'KabbAmine/vCoolor.vim' "color picker for vim
"Fuzzy Finders and Navigation------------------------------------------------------------------
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
""fuzzy finedr using fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"-------------------------------------------------------------------------------
"Plug 'lervag/vimtex',{'do':'latex'}
call plug#end()
