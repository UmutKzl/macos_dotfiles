local map = vim.keymap.set

map("n", "<leader><leader>", function()
	Snacks.picker.files()
end, { desc = "Find files" })

map("n", "<leader>lg", function()
	Snacks.picker.grep()
end, { desc = "Live grep" })

map("n", "<leader>ic", function()
	Snacks.picker.icons()
end, { desc = "Select emojis" })

map("n", "<leader>ic", function()
	Snacks.picker.diagnostics()
end, { desc = "Diagnostics" })

map("n", "<leader>lg", function()
	Snacks.LazyGit()
end, { desc = "Diagnostics" })

map("n", "<leader>xx", function()
	require("Trouble").toggle("diagnostics")
end, { desc = "Trouble.nvim" })

map("n", "<ESC><ESC>", ":nohlsearch<CR>", { silent = true })

map("n", "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>")
map("n", "<C-j>", "<cmd><C-U>TmuxNavigateDown<cr>")
map("n", "<C-k>", "<cmd><C-U>TmuxNavigateUp<cr>")
map("n", "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>")

-- Vanilla Navigation
-- map("n", "<C-h>", "<C-w><C-h>")
-- map("n", "<C-j>", "<C-w><C-j>")
-- map("n", "<C-k>", "<C-w><C-k>")
-- map("n", "<C-l>", "<C-w><C-l>")

map("n", "H", ":bprev <CR>", { silent = true })
map("n", "L", ":bnext <CR>", { silent = true })

map("n", "G", ":bdelete <CR>", { silent = true })
