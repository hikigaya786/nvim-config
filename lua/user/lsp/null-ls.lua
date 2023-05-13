local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end
print("null-ls file called")

local augroup      = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting   = null_ls.builtins.formatting
local completion   = null_ls.builtins.completion
local diagnostics  = null_ls.builtins.diagnostics
--local conditional = function(fn)
--    local utils = require("null-ls.utils").make_conditional_utils()
--    return fn(utils)
--end
local code_actions = null_ls.builtins.code_actions

local opts         = {
    debug = true,
    sources = {
        formatting.gofumpt,
        formatting.goimports_reviser,
        -- formatting.eslint,
        -- formatting.sqlfluff.with({
        --     extra_args = { "--dialect", "postgres" }, -- change to your dialect
        -- }),
        code_actions.gomodifytags,
        -- code_actions.gitsings,
        completion.spell,
        completion.luasnip,
        diagnostics.staticcheck,
        -- diagnostics.eslint,
        -- diagnositcs.golangci_lint,
        diagnostics.todo_comments,
        -- diagnositcs.tsc,
        formatting.goimports,
    },
    -- on_attach = function(client, bufnr)
    --     if client.supports_method("textDocument/formatting") then
    --         vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    --         vim.api.nvim_create_autocmd("BufWritePre", {
    --             group = augroup,
    --             buffer = bufnr,
    --             callback = function()
    --                 -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
    --                 vim.lsp.buf.formatting_sync()
    --             end,
    --         })
    --     end
    -- end,
}

null_ls.setup(opts)
