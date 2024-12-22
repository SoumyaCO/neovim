-- Floating Terminal Plugin for Neovim
local M = {}

-- Configuration for the floating terminal
M.config = {
    keymap = "<leader>t", -- Default keymap to toggle terminal
    terminal_buf = nil,
    terminal_win = nil
}

-- Create a floating terminal
local function open_floating_terminal()
    local width = math.floor(vim.o.columns * 0.8)
    local height = math.floor(vim.o.lines * 0.8)
    local row = math.floor((vim.o.lines - height) / 2)
    local col = math.floor((vim.o.columns - width) / 2)

    local opts = {
        relative = "editor",
        width = width,
        height = height,
        row = row,
        col = col,
        style = "minimal",
        border = "rounded"
    }

    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_open_win(buf, true, opts)
    vim.fn.termopen(vim.o.shell)
    vim.cmd("startinsert")

    M.config.terminal_buf = buf
    M.config.terminal_win = vim.api.nvim_get_current_win()
end

-- Close the floating terminal
local function close_floating_terminal()
    if M.config.terminal_win then
        vim.api.nvim_win_close(M.config.terminal_win, true)
        M.config.terminal_buf = nil
        M.config.terminal_win = nil
    end
end

-- Toggle the floating terminal
function M.toggle_terminal()
    if M.config.terminal_win and vim.api.nvim_win_is_valid(M.config.terminal_win) then
        close_floating_terminal()
    else
        open_floating_terminal()
    end
end

-- Setup function to set the keymap
function M.setup(config)
    if config and config.keymap then
        M.config.keymap = config.keymap
    end

    vim.api.nvim_set_keymap(
        "n",
        M.config.keymap,
        "<cmd>lua require('floating_terminal').toggle_terminal()<CR>",
        { noremap = true, silent = true }
    )
end

-- Setup with default keymap
M.setup({ keymap = "<leader>t" })

return M
