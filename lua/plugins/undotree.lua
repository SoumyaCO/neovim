return {
	-- prvides a nice undo tree, go navigate through
	"mbbill/undotree",
	vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { noremap = true, silent = true }),
}
