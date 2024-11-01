-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- default themes
-- vim.cmd("colorscheme retrobox")
-- vim.cmd("colorscheme habamax")

-- nerd font symbols
-- [Planning to remove this later]
vim.g.have_nerd_font = true

-- laststatus
-- Single statusline for multiple splits
vim.opt.ls = 3

-- pumblend
-- vim.opt.pb = 0

-- line number [when I need extreme focus, Just Kidding]
vim.opt.number = false
vim.opt.relativenumber = false

-- terminal colors
vim.opt.termguicolors = true

-- already in the status line
vim.opt.showmode = false

-- set the tabspace to 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- global clipboard [planning to remove it later]
vim.o.clipboard = "unnamedplus"

-- linebreak at the end of the word, not in the middle
vim.opt.wrap = false
vim.opt.linebreak = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching
-- UNLESS \C or one or more capital
-- letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
-- vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
-- vim.opt.cursorline = true

-- Keep the "block" cursor in every mode.
vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 18

-- useful for resizing splits
-- [planning to remove it later]
vim.opt.mouse = "a"

-- Extra ui features (for obsidian)
vim.opt.conceallevel = 2
