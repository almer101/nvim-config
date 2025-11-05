-- ----------------------------------------------------
-- Pyright
-- ----------------------------------------------------
vim.lsp.config('pyright', {
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            }
        }
    }
})

-- Configure diagnostics display
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",  -- character before virtual text
    spacing = 4,
  },
  float = {
    border = "rounded",
    source = "always", -- show "Pyright" source in the popup
  },
  underline = true,
  signs = true,
  update_in_insert = false,
})

-- Show diagnostics automatically on hover or when the cursor rests
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = "single", -- or "rounded"
    width = 80,
    -- You can add other styling options here
  }
)

vim.lsp.enable('pyright')


-- ----------------------------------------------------
-- Other lsp config...
-- ----------------------------------------------------
-- ...
