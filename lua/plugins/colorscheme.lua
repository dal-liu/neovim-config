return {
	-- One Dark Pro
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = function()
			-- Load the colorscheme here.
			-- vim.cmd.colorscheme("onedark")
		end,
		config = function()
			local colors = require("onedarkpro.helpers").get_colors()
			require("onedarkpro").setup({
				highlights = {
					["@comment"] = { fg = colors.comment, italic = true },
					CursorLineNr = { fg = colors.white, extend = true },
					NvimTreeFolderName = { fg = colors.white },
					NvimTreeRootFolder = { fg = colors.comment },
					NvimTreeFolderIcon = { fg = colors.blue },
					NvimTreeOpenedFolderName = { fg = colors.blue },
				},
				options = {
					cursorline = true,
				},
			})
		end,
	},

	-- Ayu
	{
		"Shatur/neovim-ayu",
		priority = 1000,
		init = function()
			-- Load the colorscheme here.
			vim.cmd.colorscheme("ayu")
		end,
		config = function()
			require("ayu").setup({
				mirage = true,
			})
		end,
	},
}
