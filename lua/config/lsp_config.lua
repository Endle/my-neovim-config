local L = {
    "clangd",
    "ruff"
}

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = L,
})
vim.lsp.enable(L)


vim.diagnostic.config({
  virtual_text = true,
})
