return {
	-- harpoon
	"ThePrimeagen/harpoon",

	dependencies = {
		-- required.
		"nvim-lua/plenary.nvim",
	},
	vim.keymap.set("n", "<C-a>", function()
		require("harpoon.mark").add_file()
	end),
	-- ivim.keymap.set('n', '<M-n>', function()
	-- require('harpoon.ui').nav_next()
	-- end),
	vim.keymap.set("n", "<C-p>", function()
		require("harpoon.ui").nav_prev()
	end),
	vim.keymap.set("n", "<C-n>", function()
		require("harpoon.ui").nav_next()
	end),
	vim.keymap.set("n", "<C-m>", function()
		require("harpoon.ui").toggle_quick_menu()
	end),
}
