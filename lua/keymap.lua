local map = vim.api.nvim_set_keymap
local opt = {noremap=true,silent=true}

-- Telescope
map("n", "ff",      "<cmd>lua require('telescope.builtin').find_files()<cr>", opt)
map("n", "fg",      "<cmd>lua require('telescope.builtin').live_grep()<cr>",  opt)
map("n", "fm",      "<cmd>lua require('telescpoe.builtin').marks()<CR>",      opt)
map("n", "fb",      "<cmd>lua require('telescope.builtin').buffers()<cr>",    opt)

-- Mange buffers
map("n", "<C-j>", "<cmd>bnext<cr>", opt)
map("n", "<C-k>", "<cmd>bprev<cr>", opt)

-- Smart manual identation
map("v", ">",       ">gv", opt)
map("v", "<lt>",    "<gv", opt)
map("v", "<Tab>",   ">gv", opt)
map("v", "<S-Tab>", "<gv", opt)
map("n", "<Tab>",   ">>",  opt)
map("n", "<S-Tab>", "<<",  opt)

-- The system clipboard
map("v", "<C-y>",   '"+yy', opt)
map("n", "<C-y>",   '<cmd>"+yy<cr>', opt)

map("n", "<C-p>",   '"+p', opt)
map("i", "<C-p>",   '<cmd>"+p<cr>', opt)

-- To map <Esc> to exit terminal-mode:
map("t", "<A-Esc>", "<C-\\><C-n>", opt)
