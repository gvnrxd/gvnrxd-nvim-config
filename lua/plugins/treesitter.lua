-- Configure Treesitter
require("nvim-treesitter").setup({})

-- Enable Treesitter highlighting for supported filetypes
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua",
        "python",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "json",
        "html",
        "css",
        "bash",
        "c",
        "cpp",
    },

    callback = function()
        vim.treesitter.start()
    end,
})
