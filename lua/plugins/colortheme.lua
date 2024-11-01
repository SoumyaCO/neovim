return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
        vim.g.gruvbox_material_better_performance = true
		vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_enable_bold = true
		vim.g.gruvbox_material_background = 'hard'
		vim.g.gruvbox_material_foreground = 'mix'
        vim.g.gruvbox_material_ui_contrast = 'high'
		vim.cmd.colorscheme("gruvbox-material")
		vim.api.nvim_set_hl(0, "FloatBorder", {bg='#282828'})
		vim.api.nvim_set_hl(0, "NormalFloat", {bg='#282828'})
	end,
}
