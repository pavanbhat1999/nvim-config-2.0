vim.cmd [[packadd packer.nvim]]
-- Reload Packer
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then return end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end
    }
}
return require('packer').startup(function()
    -- #1 General Plugins--------------------------------------------------------------------------------
    use 'wbthomason/packer.nvim'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-surround' -- https://github.com/tpope/vim-surround"
    use 'alvan/vim-closetag' -- auto closing tags - web development
    use 'numToStr/Comment.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'mhinz/vim-startify'
    use 'airblade/vim-gitgutter'
    use 'junegunn/vim-easy-align'
    ----------------------------------------------------------------------------------------------------
    -- 2 Auto Completion Plugins-------------------------------------------------------------------------
    use 'neovim/nvim-lspconfig'
    -- use { 'github/copilot.vim', opt = true, cmd = { 'coco' } }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    -- use 'SirVer/ultisnips'
    -- use 'honza/vim-snippets'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    -- use 'golang/vscode-go'
    use 'rafamadriz/friendly-snippets'
    use 'onsails/lspkind-nvim' -- icons for lsp
    -- use 'sbdchd/neoformat'
    -- post install (yarn install | npm install) then load plugin only for editing supported files
    -- use {'prettier/vim-prettier', run= 'yarn install' }
    -- use "jose-elias-alvarez/null-ls.nvim"
    ----------------------------------------------------------------------------------------------------
    -- #3 color settings and look😛----------------------------------------------------------------------
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- We recommend updating the parsers on update
    -- use 'lifepillar/vim-gruvbox8'
    -- use 'lifepillar/vim-solarized8'
    use 'folke/tokyonight.nvim'
    -- Pslug 'arcticicestudio/nord-vim'
    -- use 'dracula/vim', { 'as': 'dracula' }
    -- "use 'morhetz/gruvbox'
    -- "indentation guidelines
    -- "minimap
    use 'psliwka/vim-smoothie'
    -- "use 'vim-airline/vim-airline'
    use 'hoob3rt/lualine.nvim'
    use { 'rrethy/vim-hexokinase', run = 'make hexokinase' } -- Color Display"
    use 'KabbAmine/vCoolor.vim'                              -- color picker for vim
    -- Fuzzy Finders and Navigation----------------------------------------------------------------------
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope-media-files.nvim'
    -- "fuzzy finedr using fzf
    -- use 'junegunn/fzf', { 'do': { -> fzf#install() } }
    -- use 'junegunn/fzf.vim'
    -- -------------------------------------------------------------------------------------------------
    -- use 'lervag/vimtex',{'do':'latex'}
    -- Lua
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    }
    use { 'ThePrimeagen/harpoon' }
    use({
        "vimwiki/vimwiki",
        branch = "dev",
        -- keys = { "<leader>x" },
        config = function()
            vim.g["vimwiki_list"] = {
                {
                    template_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/vimwiki/autoload/",
                    path = "~/Downloads/vimwiki",
                    -- syntax = "markdown",
                    -- ext = ".md",
                },
            }
            vim.g["vimwiki_global_ext"] = 0
        end,
    })
    -- use("davidgranstrom/nvim-markdown-preview")
    -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" }) NOTE:For web blog
    -- use({
    -- 	"glacambre/firenvim",
    -- 	run = function()
    -- 		vim.fn["firenvim#install"](1)
    -- 	end,
    -- })
    ---------------------------------------------------------------------------------------------------
    -- Local plugins can be included My Own Plugin
    use({
        "pavanbhat1999/figlet.nvim",
        requires = "numToStr/Comment.nvim",
    })
    -- highlighting desired colors
    use("Pocco81/HighStr.nvim")
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly'                    -- optional, updated every week. (see issue #1193)
    }
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- NOTE: For working lua-langauge server
    use "folke/neodev.nvim"
    -- use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
    -- use('xiyaowong/nvim-transparent')
    -- use "Pocco81/TrueZen.nvim"
    -- use 'junegunn/goyo.vim'
    -- NOTE: i use  zen mode very less
    -- use({
    --     "folke/zen-mode.nvim",
    --     config = function()
    --         require("zen-mode").setup({
    --             plugins = {
    --                 window = {
    --                     width = 0.75,
    --                 },
    --                 options = {
    --                     -- signcolumn = "no",
    --                     number = false,
    --                     relativenumber = false,
    --                 },
    --                 kitty = {
    --                     enabled = true,
    --                     font = "+2", -- font size increment
    --                 },
    --             },
    --         })
    --     end,
    -- })
end)
