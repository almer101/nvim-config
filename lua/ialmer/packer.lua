-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use { "neovim/nvim-lspconfig" }
	use {
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end
	}
	use {
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	}
	use {
		"OXY2DEV/markview.nvim",
		lazy = false,
	}

	-- Color schemes
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use({
		'projekt0n/github-nvim-theme',
		config = function()
			require('github-theme').setup({
				-- ...
			})

			vim.cmd('colorscheme github_dark_default')
		end
	})

	use({
		'vague-theme/vague.nvim',
		config = function()
			require('vague').setup({
				-- ...
			})

			vim.cmd('colorscheme vague')
		end
	})
	use { "scottmckendry/cyberdream.nvim" }
	use { "rebelot/kanagawa.nvim" }

	use { "catppuccin/nvim", as = "catppuccin" }
	use { "morhetz/gruvbox" }
	use { "vim-airline/vim-airline" }
	use { "vim-airline/vim-airline-themes" }

	-- Autocompletion
	use 'hrsh7th/nvim-cmp' -- Completion plugin
	use 'hrsh7th/cmp-buffer' -- Buffer source
	use 'hrsh7th/cmp-path' -- Path source
	use 'hrsh7th/cmp-cmdline' -- Cmdline source
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source
	use 'L3MON4D3/LuaSnip' -- Snippet engine
	use 'saadparwaiz1/cmp_luasnip' -- Snippet source for nvim-cmp
	--use 'rafamadriz/friendly-snippets' -- Optional: Pre-made snippets for various languages

	-- Commenting plugin
	use { 'numToStr/Comment.nvim' }

end)
