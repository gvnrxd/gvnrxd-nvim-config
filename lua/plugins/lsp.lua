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

-- Install and enable language servers
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",   -- Lua
        "pyright",  -- Python
        "ts_ls",    -- JavaScript / TypeScript
        "clangd",   -- C / C++
        "html",     -- HTML
        "cssls",    -- CSS / SCSS / LESS
    },

    automatic_enable = true,
})
