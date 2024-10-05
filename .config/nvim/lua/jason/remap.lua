vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Terminal
vim.keymap.set("n", "<leader>t", ":vsplit term://fish<CR>")
vim.keymap.set("n", "<leader>ht", ":split term://fish<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-w>", "<C-\\><C-n><C-w>")
vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber")
vim.cmd("autocmd TermOpen * startinsert")
vim.cmd("autocmd BufEnter term://* startinsert")

-- Window Resize
-- vertical
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])
-- horizontal
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]])

-- Buffers
vim.keymap.set('n', "<leader>bn", vim.cmd.bnext)
vim.keymap.set('n', "<leader>bp", vim.cmd.bprev)
vim.keymap.set('n', "<leader>bd", vim.cmd.bdelete)
vim.keymap.set('n', "<leader>bx", ":bdelete!<CR>")


vim.keymap.set('n', "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
