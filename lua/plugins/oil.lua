return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = function()
		require("oil").setup({
			skip_confirm_for_simple_edits = true,
			columns = {
				"icon",
				-- "permissions",
				"size",
			},
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			},
		})
	end,
	-- open oil
	vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
}
