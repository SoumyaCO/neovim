return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({
			lightbulb = {
				enable = false,
			},
			symbol_in_winbar = {
				enable = false,
			},
			border_style = "rounded",
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	vim.keymap.set("n", "<leader>pt", "<cmd>Lspsaga peek_type_definition<cr>", { desc = "[P]eek [T]ype definition" }),
	vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<cr>", { desc = "[P]eek [Definition]" }),
	vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", { desc = "Hover Doc" }),
	vim.keymap.set(
		"n",
		"<leader>sd",
		"<cmd>Lspsaga show_workspace_diagnostics<cr>",
		{ desc = "[S]earch [D]iagnostics" }
	),
	vim.keymap.set("n", "<leader>fi", "<cmd>Lspsaga finder<cr>", { desc = " [f]inder" }),
	vim.keymap.set("n", "<leader>fo", "<cmd>Lspsaga outline<cr>", { desc = " [f]inder" }),
	vim.keymap.set("n", "<leader>wt", "<cmd>Lspsaga winbar_toggle<cr>", { desc = " [f]inder" }),
}
