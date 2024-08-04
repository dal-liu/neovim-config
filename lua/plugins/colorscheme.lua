return {
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
