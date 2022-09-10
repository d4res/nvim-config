local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
vim.g.mapleader = " "
vim.g.mapcallleader = " "

map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

map("n", "<leader>t", ":sp|terminal<CR>", opt)
map("n", "<leader>vt", ":vsp|terminal<CR>", opt)

map("n", "q", ":wq<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)
map("n", "<C-s>", ":w<CR>", opt)
map("i", "<C-s>", "<Esc>:w<CR>", opt)

map("t", "<Esc>", "<C-\\><C-n>", opt)

map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-w>", ":Bdelete!<CR>", opt)

local pluginKeys = {}

map("n", "<leader>n", ":NvimTreeToggle<CR>", opt)
pluginKeys.nvimTreeList = {
    { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit"},
    { key = "v", action = "vsplit" },
    { key = "h", action = "split" },
    { key = ".", action = "toggle_dotfiles" },
    { key = "i", action = "toggle_custom" },
    { key = "<F5>", action = "refresh" },
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "y", action = "copy" },
    { key = "p", action = "paste" },
    { key = "s", action = "system_open" },
}
return pluginKeys


