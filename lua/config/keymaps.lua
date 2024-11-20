local keymap = vim.keymap.set

-- Handle buffers tab
keymap("n", "<TAB>", "<cmd>bnext<CR>", { noremap = true, desc = "Next buffer" })
keymap("n", "<S-TAB>", "<cmd>bprevious<CR>", { noremap = true, desc = "Previous buffer" })
