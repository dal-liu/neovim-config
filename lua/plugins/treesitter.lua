return {
	{
		"nvim-treesitter/nvim-treesitter",
		tag = "v0.8.0",
		dependencies = {
			-- Automatically add closing characters for certain languages
			"RRethy/nvim-treesitter-endwise",
		},
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "bash", "c", "html", "lua", "luadoc", "markdown", "vim", "vimdoc" },
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			ignore_install = { "latex" }, -- Use vimtex instead
			endwise = {
				enable = true,
			},
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},

	-- Automatically add closing tags for HTML and JSX
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
