-- mason setup
require("mason").setup()

-- mason-lspconfig setup
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright", "stylua", "bashls" }, -- auto-install these
  automatic_installation = true, -- automatically install configured servers
})

