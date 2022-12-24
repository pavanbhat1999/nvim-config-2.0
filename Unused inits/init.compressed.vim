"for opening in full window-----------------------------------------------------
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
"-------------------------------------------------------------------------------
source $HOME/.config/nvim/vim-scripts/plugins.vim
"let g:vim_json_conceal=0
source $HOME/.config/nvim/vim-scripts/defalts.vim
source $HOME/.config/nvim/vim-scripts/color-settings.vim
source $HOME/.config/nvim/vim-scripts/key-mappings.vim
source $HOME/.config/nvim/vim-scripts/auto-cmd.vim
let g:airline#extensions#tabline#enabled = 1
"-------------------------------------------------------------------------------
"Auto complettion using coc-----------------------------------------------------
"source $HOME/.vim/plug-config/coc.vim
" LSP config (the mappings used in the default file don't quite work right)
" npm install language servers
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> [g <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]g <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
luafile $HOME/.config/nvim/lua/cmp-config.lua
luafile $HOME/.config/nvim/lua/python-lsp.lua
"luafile $HOME/.config/nvim/lua/bash-lsp.lua
"luafile $HOME/.config/nvim/lua/lua-line.lua
luafile $HOME/.config/nvim/lua/treesitter.lua

"lua << EOF
"require'lspconfig'.jdtls.setup{ cmd = { 'jdtls' } }
"EOF
"inoremap <silent><expr> <CR> cmp#confirm({ 'keys': '<CR>', 'select': v:true })
"-------------------------------------------------------------------------------
"Autocmd for source init.vim----------------------------------------------------
"Auto cmd for java
autocmd BufWritePost *.java !javac %
"Autocmd for g++
autocmd BufWritePost *11.cpp !g++ % -lGL -lcrypto -lglut -lGLU &&  ./a.out
"autocmd filetype cpp nnoremap <f5> :w <bar> !g++ % -lcrypto -lGL -lglut -lGLU -o %:r && ./%:r <cr> 
"Autocmd for latex
autocmd BufWritePost *.tex !pdflatex %
"-------------------------------------------------------------------------------
"Better Commenting Strategy-----------------------------------------------------
