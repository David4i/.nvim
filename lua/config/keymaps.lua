local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Handle buffers tab
keymap.set("n", "<TAB>", "<cmd>bnext<CR>", { noremap = true, desc = "Next buffer" })
keymap.set("n", "<S-TAB>", "<cmd>bprevious<CR>", { noremap = true, desc = "Previous buffer" })

-- Handle select the whole content
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Toggle inlay hints
keymap.set("n", "<leader>i", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
