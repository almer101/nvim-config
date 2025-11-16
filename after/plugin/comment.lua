require('Comment').setup {
	-- Add custom keymaps here if desired
	mappings = {
		basic = true,    -- Enables gc/gcc defaults
		extra = true,    -- Enables g>/g< for block comments, etc.
	},
	-- Optional: Override defaults
	opleader = {
		line = 'gc',   -- For line comments (normal/visual)
		block = 'gb',  -- For block comments (if supported by language)
	},
}

