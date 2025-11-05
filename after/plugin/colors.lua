require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	color_overrides = {
		all = {
			text = "#ffffff",
		},
		mocha = {
			base = "#0a0a0f",
			mantle = "#181825", -- default colour
			crust = "#474747", -- default colour
		},
	}

})

require("cyberdream").setup({
	variant = "dark",
	transparent = true,
	saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
	-- Override colors
	colors = {
		-- For a list of colors see `lua/cyberdream/colours.lua` on https://github.com/scottmckendry/cyberdream.nvim/blob/main/lua/cyberdream/colors.lua
		-- Override colors for both light and dark variants
		bg = "#000000",
		green = "#00ff00",

		-- If you want to override colors for light or dark variants only, use the following format:
		dark = {
			magenta = "#ff00ff",
			fg = "#eeeeee",
		},
		light = {
			red = "#ff5c57",
			cyan = "#5ef1ff",
		},
	},

})


function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

end

ColorMyPencils("cyberdream") -- github_dark_default, vague, rose-pine, catppuccin, cyberdream

