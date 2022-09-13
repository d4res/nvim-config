local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
vim.g.mapleader = " "
vim.g.mapcallleader = " "

-- window switch
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
map("t", "<A-h>", "<C-\\><C-n><C-w>h", opt)
map("t", "<A-j>", "<C-\\><C-n><C-w>j", opt)
map("t", "<A-k>", "<C-\\><C-n><C-w>k", opt)
map("t", "<A-l>", "<C-\\><C-n><C-w>l", opt)

-- map("n", "<leader>th", ":tabp<CR>", opt)
-- map("n", "<leader>tl", ":tabn<CR>", opt)

-- set close
map("n", "q", ":Bdelete<CR>", opt)
map("n", "<A-q>", ":q<CR>", opt)

-- original way to save. Ctrl+S
map("n", "<C-s>", ":w<CR>", opt)
map("i", "<C-s>", "<Esc>:w<CR>", opt)

-- set Floaterm and termianl
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("n", "<C-\\>", ":FloatermToggle<CR>", opt)
map("t", "<C-\\>", "<C-\\><C-n>:FloatermToggle<CR>", opt)
map("n", "<leader>t", ":FloatermNew<CR>", opt)
map("t", "<leader>t", "<C-\\><C-n>:FloatermNew<CR>", opt)
map("t", "<C-h>", "<C-\\><C-n>:FloatermPrev<CR>", opt)
map("t", "<C-l>", "<C-\\><C-n>:FloatermNext<CR>", opt)

-- set buffer switch
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-w>", ":Bdelete!<CR>", opt)

-- set resize options on buffer
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)

-- set Telescope
map("n", "<leader>ff", ":Telescope find_files<cr>", opt)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opt)
map("n", "<leader>fb", ":Telescope buffers<cr>", opt)
map("n", "<leader>fh", ":Telescope help_tags<cr>", opt)


-- set clipboard
-- https://vi.stackexchange.com/questions/84/how-can-i-copy-text-to-the-system-clipboard-from-vim/96#96?newreg=9bf071ac4e294516939e0ee17bb138ab
map("n", "<leader>y", "\"*y", opt)
map("v", "<leader>y", "\"*y", opt)
map("n", "<leader>p", "\"*p", opt)
map("v", "<leader>p", "\"*p", opt)
map("n", "<leader>Y", "\"+y", opt)
map("v", "<leader>Y", "\"+y", opt)
map("n", "<leader>P", "\"+p", opt)
map("v", "<leader>P", "\"+p", opt)

-- add blankline
map("n", "<leader>o", "o<Esc>", opt)
map("n", "<leader>O", "O<Esc>", opt)

-- set trouble
map("n", "<leader>ee", "<cmd>TroubleToggle<CR>", opt)
map("n", "<leader>ew", "<cmd>TroubleToggle workspace_diagnostics<CR>", opt)
map("n", "<leader>ed", "<cmd>TroubleToggle document_diagnostics<CR>", opt)
map("n", "gR", "<cmd>TroubleToggle lsp_references<CR>", opt)

-- set startify
map("n", "<leader>;", ":Startify<CR>", opt)

-- set code_action_menu
map("n", "<leader><CR>", ":CodeActionMenu<CR>", opt)


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
