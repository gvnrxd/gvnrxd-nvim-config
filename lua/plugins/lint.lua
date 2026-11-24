local lint = require("lint")

lint.linters_by_ft = {
    lua = vim.fn.executable("selene") == 1 and { "selene" } or {}
}

vim.api.nvim_create_autocmd({
    "BufEnter",
    "BufWritePost",
    "InsertLeave",
}, {
    callback = function()
        lint.try_lint()
    end,
})
