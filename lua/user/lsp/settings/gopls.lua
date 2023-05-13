local utils_status, util = pcall(require, "lspconfig/util")
if not utils_status then 
    return
end
local M = {}
print("gopls called")
M = {
    cmd = {"gopls", "serve"},
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders    = true,
            analyses           = {
                unusedparams = true,
                fieldalignment = true,
                nilness = true,
                shadow = true,
                unusedwrite = true,
                useany = true,
                fillstruct = true,
            },
            gofumpt            = true,
            hints              = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true
            },
        }
    }
}

return M
