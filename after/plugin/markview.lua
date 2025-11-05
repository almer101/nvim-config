require("markview").setup({
	preview = {
		modes = {"n"},
		enable = false, 
		filetypes = { "markdown", "latex" },  
		hybrid_modes = {},  -- Auto-enable hybrid when entering insert mode
		linewise_hybrid_mode = false,
		--edit_range = {
		--	type = "range",  -- Switch from default "node" to "range"
		--	above = 1,       -- Lines above cursor to clear (0 = none)
		--	below = 1,       -- Lines below (0 = just current line)
		--},
	},

	markdown = {
		enable = true,  -- Ensure Markdown rendering is on (integrates with LaTeX)
	},

	latex = {
		enable = true,
		inlines = { enable = true },  -- $...$ inline math
		blocks = { enable = true },   -- $$...$$ display math
		symbols = { enable = true },  -- Math symbols like \pi
		texts = { enable = true },    -- Text in math envs
		parenthesis = { enable = true },
		subscripts = { enable = true },
		superscripts = { enable = true },
	},
})

vim.api.nvim_set_keymap("n", "<leader>m", "<CMD>Markview<CR>", { desc = "Toggles `markview` previews globally." })
vim.api.nvim_set_keymap("n", "<leader>s", "<CMD>Markview splitToggle<CR>", { desc = "Toggles `splitview` for current buffer." })
vim.api.nvim_set_keymap("i", "<Ctrl-h>", "<CMD>Markview HybridToggle<CR>", { desc = "Toggles `hybrid mode` globally." })

