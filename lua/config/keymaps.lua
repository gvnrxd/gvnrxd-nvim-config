-- Set leader key to Space
vim.g.mapleader = " "

-- Save file
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Quit Neovim
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Show diagnostic message
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {
    desc = "Show diagnostic",
})
