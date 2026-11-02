local cmp = require("cmp")

cmp.setup({
    -- Enable automatic completion
    completion = {
        autocomplete = {
            cmp.TriggerEvent.TextChanged,
            cmp.TriggerEvent.InsertEnter,
        },
        keyword_length = 1,
    },

    -- Snippet support
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },

    -- Completion windows
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    -- Keyboard shortcuts
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({
            select = false,
        }),
    }),

    -- Completion sources
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "path" },
    }, {
        { name = "buffer" },
    }),
})
