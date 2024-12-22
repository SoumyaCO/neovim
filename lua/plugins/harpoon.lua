return {
	-- harpoon
	"ThePrimeagen/harpoon",
	dependencies = {
		-- required.
		"nvim-lua/plenary.nvim",
	},
	vim.keymap.set("n", "<C-a>", function()
		require("harpoon.mark").add_file()
	end, { noremap = true, silent = true }),
	vim.keymap.set("n", "<C-p>", function()
		require("harpoon.ui").nav_prev()
	end, { noremap = true, silent = true }),
	vim.keymap.set("n", "<C-n>", function()
		require("harpoon.ui").nav_next()
	end, { noremap = true, silent = true }),
	vim.keymap.set("n", "<C-b>", function()
		require("harpoon.ui").toggle_quick_menu()
	end, { noremap = true, silent = true }),
}
