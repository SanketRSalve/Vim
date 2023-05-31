-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keybinding
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

--clear search hightlights
keymap.set("n", "<leader>nh", "nohl<CR>")

-- Delete single character without copying into register
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '<leader>+', '<C-a>')
keymap.set('n', '<leader>-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

---------------------
-- Plugin Keybinds 
---------------------

-- nvim-tree
keymap.set("n", "<leader>z", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")


-- Flutter-Keymaps
keymap.set("n", "<leader><F6>", ":FlutterRestart<CR>")
keymap.set("n", "<leader><F5>", ":FlutterReload<CR>")
keymap.set("n", "<leader>fq", ":FlutterQuit<CR>")
