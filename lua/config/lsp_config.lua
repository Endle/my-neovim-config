require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "clangd" },
})
vim.lsp.enable({
    "clangd"
})


