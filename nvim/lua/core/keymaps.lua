vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<Esc>", ":nohl<CR>")
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
