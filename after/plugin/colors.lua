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


function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

end

ColorMyPencils("catppuccin") -- github_dark_default, vague, rose-pine

