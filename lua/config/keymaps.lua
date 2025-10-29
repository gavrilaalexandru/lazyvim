-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete word backward" })

vim.keymap.set({ "n", "v" }, "x", '"+d', { desc = "Cut to clipboard" })

vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking" })

vim.keymap.set("n", "dd", '"_dd', { desc = "Delete line without yanking" })
