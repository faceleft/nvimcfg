-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")

keymap.set("n", "x", '"_x')

--vim.opt.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
