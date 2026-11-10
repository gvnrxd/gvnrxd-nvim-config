---@type nvim_tree.config
local config = {
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false, -- Show dotfiles by default
    },
}

require("nvim-tree").setup(config)
