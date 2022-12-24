local cmp = require 'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
            -- vim.fn["UltiSnips#Anon"](args.body)
        end
    },
    mapping = {
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },
    sources = {
        { name = 'buffer' }, { name = 'nvim_lua' }, { name = 'nvim_lsp' },
        { name = 'path' }, { name = 'vsnip' }
        -- { name = 'ultisnips' },
    }
})
-- Use buffer source for `/`.
-- cmp.setup.cmdline('/', {
-- sources = {
-- { name = 'buffer' }
-- }
-- })

-- Use cmdline & path source for ':'.
-- cmp.setup.cmdline(':', {
-- sources = cmp.config.sources({
-- { name = 'path' }
-- }, {
-- { name = 'cmdline' }
-- })
-- })

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- The following example advertise capabilities to `clangd`.
require 'lspconfig'.clangd.setup { capabilities = capabilities }
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.html.setup { capabilities = capabilities }
-- for icons
local lspkind = require('lspkind')
cmp.setup {
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                vsnip = "[snip]",
                gh_issues = "[issues]"
            }
        }
    }
}
