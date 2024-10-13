-- [General]
local opts = { noremap = true, silent = true }
-- disable default behaviour of SPACE in normal and visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- clear highlights after searching
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- disable arrow keys
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- delete characters without copy to register
vim.keymap.set({ 'n', 'v' }, 'x', '"_x', opts)

-- Vertical scroll and center (from @ThePrimeagen)
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Splits
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

-- resize panes with arrow keys
vim.keymap.set('n', '<Up>', '<CMD>resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', '<CMD>resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', '<CMD>vertical resize +2<CR>', opts)
vim.keymap.set('n', '<Right>', '<CMD>vertical resize -2<CR>', opts)

-- focus on l,r,t,d windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Toggle line warp
vim.keymap.set('n', '<leader>', '<CMD>set wrap!<CR>', opts)

-- stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


-- [Oil]
-- open oil
vim.keymap.set('n', "<leader>pv", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

