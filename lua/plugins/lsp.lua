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
local system = vim.uv.os_uname()
local is_linux_arm64 = system.sysname == "Linux"
    and (system.machine == "aarch64" or system.machine == "arm64")

local servers = { "lua_ls", "luau_lsp", "pyright", "ts_ls", "html", "cssls" }

if not is_linux_arm64 then
    table.insert(servers, "clangd")
end

require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_enable = true,
})

if is_linux_arm64 and vim.fn.executable("clangd") == 1 then
    vim.lsp.enable("clangd")
end
