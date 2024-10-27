return {
	-- Highlight todo, notes, etc in comments
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = false },
	vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope<CR>"),
}
