require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.colortheme"),
	require("plugins.lualine"),
	require("plugins.lsp"),
	require("plugins.lspsaga"),
	require("plugins.telescope"),
	require("plugins.treesitter"),
	require("plugins.conform"),
	require("plugins.autopairs"),
	require("plugins.oil"), -- oil, file editor
	require("plugins.neotree"),
	require("plugins.completion"), -- autocomplete
	require("plugins.gitsigns"),
	require("plugins.hl_colors"),
	require("plugins.nerdy"),
	require("plugins.obsidian"), -- obsidian
	require("plugins.debug"),
})
