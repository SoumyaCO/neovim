-- statusline
Job = require("plenary.job")

function Get_Git_Branch_For_StatusLine()
	local branch = ""
	Job:new({
		command = "git",
		args = { "rev-parse", "--abbrev-ref", "HEAD" },
		on_exit = function(j)
			branch = j:result()[1] or ""
		end,
	}):sync()
	return branch
end
function MyNeovimStatusLineMode()
	local mode_map = {
		["n"] = "NORMAL",
		["i"] = "INSERT",
		["v"] = "VISUAL",
		["V"] = "V-LINE",
		["\22"] = "V-BLOCK", -- Ctrl-V is \22 in Lua
		["c"] = "COMMAND",
		["R"] = "REPLACE",
		["r"] = "Hit-Enter",
		["t"] = "TERMINAL",
		["s"] = "SELECT",
		["S"] = "S-LINE",
		["\19"] = "S-BLOCK", -- Ctrl-S is \19 in Lua
	}

	local current_mode = vim.api.nvim_get_mode().mode
	return mode_map[current_mode] or "Unknown"
end
vim.o.statusline =
	"[%{v:lua.MyNeovimStatusLineMode()}]  %<%f %h%m%r [%{v:lua.Get_Git_Branch_For_StatusLine()}] %=%y  %l:%c  %P"
