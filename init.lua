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
	require("plugins.telescope"),
	require("plugins.treesitter"),
	require("plugins.lsp"),
	require("plugins.lspsaga"),
	require("plugins.harpoon"),
	require("plugins.undotree"),
	require("plugins.todo_comments"),
	require("plugins.conform"),
	require("plugins.autopairs"),
	require("plugins.completion"),
	require("plugins.gitsigns"),
	require("plugins.highlight"),
	require("plugins.nerdy"),
	require("plugins.obsidian"),
	-- [configured, but don't use them for now] ----
	-- ---------------------------------------------
	-- require("plugins.debug"),
	-- require("plugins.custom_snippets"),
	-- require("plugins.mini"), -- small modules of many things [I'm using just the]
	-- require("plugins.oil"), -- oil, file editor
	-- require("plugins.neotree"), -- neotree
	-- require("plugins.neogit"), [ Don't use this seriously, have to use it more]
	-- require("plugins.colortheme"), -- [(Format): comment the current one, and use the next ]
	-- require("plugins.lualine"),
	-- ---------------------------------------------
})

-- require("core.statusline") [ For me default statusline looks nice ]
