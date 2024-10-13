return {
	"echasnovski/mini.nvim",
	config = function()
		local minifiles = require("mini.files")
		vim.keymap.set("n", "<leader>o", function()
			local _ = minifiles.close() or minifiles.open(vim.api.nvim_buf_get_name(0), false)
			vim.defer_fn(function()
				minifiles.reveal_cwd()
			end, 30)
		end)
	end,
}
