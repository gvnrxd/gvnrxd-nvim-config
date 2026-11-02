-- Configure Catppuccin
require("catppuccin").setup({
    flavour = "mocha",

    transparent_background = false,

    term_colors = true,

    styles = {
        comments = { "italic" },
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
    },
})

-- Apply the theme
vim.cmd.colorscheme("catppuccin-nvim")
