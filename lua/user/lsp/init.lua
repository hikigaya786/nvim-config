local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end
print("init from lsp called")

require("user.lsp.mason")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
