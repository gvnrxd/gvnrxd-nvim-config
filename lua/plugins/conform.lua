require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_format" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        c = { "clang_format" },
        cpp = { "clang_format" },
    },

    format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
    },
})
