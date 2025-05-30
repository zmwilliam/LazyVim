-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- Disable move lines
unmap({ "n", "i", "v" }, "<A-j>")
unmap({ "n", "i", "v" }, "<A-k>")

-- Unmap save files
-- unmap({ "n" }, "<C-s>")

-- Clipboard
map({ "n", "v" }, "<leader>d", [["+d]], { desc = "delete to clipboard" })
map({ "n", "v" }, "<leader>p", [["+p]], { desc = "paste from clipboard (after)" })
map({ "n", "v" }, "<leader>P", [["+P]], { desc = "paste from clipboard (before)" })
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "yank to clipboard" })
map({ "n" }, "<leader>D", [["+d$]], { desc = "delete to clipboard (d$)" })
map({ "n" }, "<leader>Y", [["+y$]], { desc = "yank to clipboard (d$)" })
map({ "v" }, "p", [["_dP]], { desc = "Visual paste without yanking" })

-- Motion
map({ "n" }, "<C-d>", "<C-d>zz", { desc = "page down (centering)" })
map({ "n" }, "<C-u>", "<C-u>zz", { desc = "page down (centering)" })
-- map({ "n" }, "n", "nzzzv", { desc = "repeat last search (centering)" })
-- map({ "n" }, "N", "Nzzzv", { desc = "repeat last search, in opposite direction (centering)" })
map({ "n" }, "J", "mzJ`z", { desc = "join N-1 lines, keeping cursor position" })
