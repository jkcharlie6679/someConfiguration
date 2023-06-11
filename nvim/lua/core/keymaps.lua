vim.g.mapleader = " " -- set the leader key to space
local keymap = vim.keymap -- for concieness

-- set the keymap for toggling the nerdtree
keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")

-- set the keymap for tabs
keymap.set("n", "<leader>tj", ":tabprevious<CR>")
keymap.set("n", "<leader>tk", ":tabnext<CR>")
keymap.set("n", "<leader>tn", ":tabnew<CR>")

-- set the keymap for moving lines up and down
keymap.set("n", "∆", ":m .+1<CR>")
keymap.set("n", "˚", ":m .-2<CR>")

-- set the keymap for using fzf to search
keymap.set("n", "<C-g>", ":Ag<CR>")

-- set the keymap for opening the go to definition in a new tab
keymap.set("n", "<C-]>", "<C-w><C-]><C-w>T")

-- set the fold keymaps
keymap.set("n", "<C-o>", "zo")
keymap.set("n", "<C-x>", "zc")

-- set keymap for turning off the highlight
keymap.set("n", "<C-h>", ":noh<CR>")

-- set the keymap for spliting the window
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

