require("ialmer.remap")
require("ialmer.lsp")

-- Options
vim.opt.relativenumber = true

-- Make background transparent
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight NonText guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight EndOfBuffer guibg=NONE ctermbg=NONE]])
vim.cmd([[highlight SignColumn guibg=NONE]])  -- Optional: For git signs, line numbers, etc.
vim.cmd([[highlight LineNr guibg=NONE]])      -- Optional: For line numbers

