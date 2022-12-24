require'lspconfig'.pyright.setup {
    settings = {
        pyright = {disableLanguageServices = false},
        python = {
            pythonPath = '/usr/bin/python',
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    }
}

-- require'lspconfig'.pylsp.setup{}

-- require'lspconfig'.jedi_language_server.setup{}

