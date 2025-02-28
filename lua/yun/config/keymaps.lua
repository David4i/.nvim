local ui = require("utils.ui")

local keymap = vim.keymap
local opts = { noremap = true }

-- File browser
keymap.set("n", "<leader>e", ":Neotree toggle<CR>", opts)
-- keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Allow select all by using cmd + A
keymap.set("n", "<C-a>", "ggVG", opts)

-- Move lines in the visual mode
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

-- Window
keymap.set("n", "<leader>wc", ":bd!<CR>", opts)

-- Movements
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Handle buffers
keymap.set("n", "<leader>q", ui.bufremove, opts)
keymap.set("n", "<leader>Q", ":bd!<CR>", opts)
keymap.set("n", "<Tab>", function()
  if vim.fn.tabpagenr("$") > 1 then
    vim.cmd("tabnext")
  else
    vim.cmd("bnext")
  end
end, opts)

keymap.set("n", "<S-Tab>", function()
  if vim.fn.tabpagenr("$") > 1 then
    vim.cmd("tabprevious")
  else
    vim.cmd("bprevious")
  end
end, opts)

-- Inc rename
keymap.set("n", "<leader>rn", ":IncRename ", opts)

-- Prevent yanks
keymap.set({"n", "v"}, "<leader>d", "\"_d")
keymap.set("x", "<leader>p", [["_dP]])

-- Utils
keymap.set('n', '<ESC>', ':nohlsearch<CR>', opts)
