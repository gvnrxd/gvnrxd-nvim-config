-- Initialize Mason
require("mason").setup()

-- Enable CMP completion capabilities for all LSP servers
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
	capabilities = capabilities,
})

-- Configure Lua language server
vim.lsp.config("lua_ls", {
	workspace_required = false,

	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},

			diagnostics = {
				globals = { "vim" },
			},

			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
})

-- Configure Luau language server (Roblox)
local robloxTypes = vim.fn.stdpath("config") .. "/roblox-types/globalTypes.d.luau"

vim.lsp.config("luau_lsp", {
	cmd = {
		"luau-lsp",
		"lsp",
		"--definitions:@roblox=" .. robloxTypes,
	},

	settings = {
		["luau-lsp"] = {
			platform = {
				type = "roblox",
			},

			sourcemap = {
				enabled = true,
				autogenerate = false,
				sourcemapFile = "sourcemap.json",
			},
		},
	},
})

-- Install and enable language servers
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls", -- Lua
		"luau_lsp", -- Roblox / Luau
		"pyright", -- Python
		"ts_ls", -- JavaScript / TypeScript
		"clangd", -- C / C++
		"html", -- HTML
		"cssls", -- CSS / SCSS / LESS
	},

	automatic_enable = true,
})
