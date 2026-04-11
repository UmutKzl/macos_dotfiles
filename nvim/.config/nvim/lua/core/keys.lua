local map = vim.keymap.set

-- Snacks.nvim {{{
map("n", "<leader><leader>", function()
	Snacks.picker.files()
end, { desc = "Find files" })

map("n", "<leader>?", function()
	Snacks.picker.keymaps()
end, { desc = "Keymaps" })

map("n", "<leader>lg", function()
	Snacks.picker.grep()
end, { desc = "Live grep" })

map("n", "<leader>ic", function()
	Snacks.picker.icons()
end, { desc = "Select emojis" })

map("n", "<leader>xf", function()
	Snacks.picker.diagnostics()
end, { desc = "Diagnostics (fuzzy)" })

map("n", "<leader>lg", function()
	Snacks.LazyGit()
end, { desc = "LazyGit" })

map("n", "<leader>e", function()
	Snacks.picker.explorer()
end, { desc = "File Explorer" })
-- }}}

-- Trouble.nvim {{{
map("n", "<leader>xx", function()
	require("Trouble").toggle("diagnostics")
end, { desc = "Diagnostics" })
-- }}}

-- Some tricky things {{{
map("n", "<ESC><ESC>", ":nohlsearch<CR>", { silent = true, desc = "which_key_ignore" })
-- }}}

-- Navigation between splits {{{
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")
map("n", "<C-l>", "<C-w><C-l>")
-- }}}

-- Buffers {{{
map("n", "H", ":bprev <CR>", { silent = true, desc = "Previous Buffer" })
map("n", "L", ":bnext <CR>", { silent = true, desc = "Next buffer" })

map("n", "JK", ":bdelete <CR>", { silent = true, desc = "Close buffer" })
-- }}}
