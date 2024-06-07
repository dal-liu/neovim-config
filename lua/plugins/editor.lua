return {
	-- Adds git related signs to the gutter, as well as utilities for managing changes
	{ "lewis6991/gitsigns.nvim", opts = {} },

	-- Highlight todo, notes, etc in comments
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	-- File explorer
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				renderer = {
					indent_markers = {
						enable = false,
					},
				},
			})
			vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { desc = "[T]oggle Nvim Tree" })
		end,
	},
}
