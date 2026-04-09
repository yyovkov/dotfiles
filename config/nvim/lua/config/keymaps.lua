-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Move to window using the <ctrl> hjkl keys
--
local map = vim.keymap.set

-- Use Option+{h, j, k, l} to move to windows
map("n", "<M-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<M-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<M-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<M-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
