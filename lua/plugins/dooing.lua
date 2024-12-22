return {
	"atiladefreitas/dooing",
	config = function()
		require("dooing").setup({
            window = {
                width = 80,         -- Width of the floating window
                height = 30,        -- Height of the floating window
                border = 'rounded', -- Border style
            },
        })
	end,
}
