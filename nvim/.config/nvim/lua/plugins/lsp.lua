-- Servers {{{
vim.lsp.config["lua_ls"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}

vim.lsp.config["basedpyright"] = {
	cmd = { "basedpyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
		},
	},
}

vim.lsp.config["clangd"] = {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--header-insertion=iwyu",
		"--completion-style=detailed",
		"--function-arg-placeholders",
		"--fallback-style=llvm",
	},
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
	root_markers = { "compile_commands.json", "compile_flags.txt", "CMakeLists.txt", ".git" },
	settings = {},
}
-- }}}

-- Diagnostics on Hover {{{
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, {
			focus = false,
			scope = "cursor",
		})
	end,
})
-- }}}

vim.lsp.enable("lua_ls")
vim.lsp.enable("basedpyright")
vim.lsp.enable("clangd")
