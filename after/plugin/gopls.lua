--singlsingle setup the gopls for golang lsp server
require'lspconfig'.gopls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = require'lspconfig/util'.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                fillstruct = true,
            },
            staticcheck = true,
            gofumpt = true,
        },
    },
}

-- setup goimports to import on saves

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
    end
})

