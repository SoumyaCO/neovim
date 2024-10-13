require("core.options")
require("core.keymaps")
require("core.autocmd")

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
	require("plugins.colortheme"), -- [(Format): comment the current one, and use the next ]
	require("plugins.lualine"),
	require("plugins.lsp"), -- lsp setup [ Need more time]
	require("plugins.lspsaga"), -- better ui for lsp [ More config options, keybindings]
	require("plugins.telescope"), -- telescope [ Need more time ]
	require("plugins.treesitter"),
	require("plugins.conform"),
	require("plugins.autopairs"),
	require("plugins.oil"), -- oil, file editor
	require("plugins.neotree"), -- neotree
	require("plugins.completion"), -- autocomplete
	require("plugins.custom_snippets"),
	require("plugins.gitsigns"),
	require("plugins.hl_colors"), -- nvim highlight-colors
	require("plugins.nerdy"), -- unicode icons(web devicons)
	require("plugins.obsidian"), -- obsidian [ Need more time to condigure keymaps]
	require("plugins.debug"), -- [ Need to understand better, and use it ]
})
