local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {"clangd"}

for _, lsp in ipairs(servers) do
    require("lspconfig")[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

-- Servers that require a custom setup
require("lspconfig").gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
                unusedparams = true,
            },
        },
    },
}
