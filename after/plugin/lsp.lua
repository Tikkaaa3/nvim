
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "quick_lint_js", "pyright", "tsserver", "eslint","biome", "html", "tailwindcss"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
}
require("lspconfig").tailwindcss.setup {
    capabilities = capabilities,
}
require("lspconfig").html.setup {
    capabilities = capabilities,
}
require("lspconfig").quick_lint_js.setup {
    capabilities = capabilities,
}
require("lspconfig").quick_lint_js.setup {
    capabilities = capabilities,
}
require("lspconfig").pyright.setup {
    capabilities = capabilities,
}
require("lspconfig").tsserver.setup {
    capabilities = capabilities,
}
require'lspconfig'.biome.setup{
    cmd =
{ "biome", "lsp-proxy" },
filetypes =
{ "javascript", "javascriptreact", "json", "jsonc", "typescript", "typescript.tsx", "typescriptreact" },
single_file_support =
true
}
