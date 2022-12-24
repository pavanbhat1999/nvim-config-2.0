"nnoremap <f1> :set hls <CR>
"nnoremap <f2> :split term://zsh <CR>
"nnoremap <C-z> :vertical split<CR>
nnoremap <C-q> :GitGutterToggle<CR>
"nnoremap <leader>b :Buffers <CR>
nnoremap <leader>h :wincmd h <CR>
nnoremap <leader>j :wincmd j <CR>
nnoremap <leader>k :wincmd k <CR>
nnoremap <leader>l :wincmd l <CR>
"nnoremap <leader>f2 :set autochdir <CR>
"FZF ---------------------------------------------------------------------------
"nnoremap<C-t> :Files <CR>
"nnoremap<C-p> :Rg <CR>
"-------------------------------------------------------------------------------
" Using lua functions-----------------------------------------------------------
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden=true,no_ignore=false})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>bb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>bs <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>td :TodoTelescope<cr>
" ------------------------------------------------------------------------------
nnoremap<leader>gc :Git commit <CR>
nnoremap<leader>gch :Git checkout
"nnoremap<leader>gd :Git diff<CR>
nnoremap<leader>gw :Gvdiffsplit<CR>
nnoremap<leader>gs :G<CR>
nnoremap<leader>gp :Git push<CR>
nnoremap<leader>g1 :diffget //2<CR>
nnoremap<leader>g0 :diffget //0<CR>
nnoremap<C-a> ggVG
"easy align commands------------------------------------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"-------------------------------------------------------------------------------
" For better Commenting and documentation of code-------------------------------
nnoremap <leader>- :set ri<cr>100A-<esc>101<bar>d$0:set nori<cr>


"---------------------------------------------------------------------------------------------------
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> [g <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]g <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
