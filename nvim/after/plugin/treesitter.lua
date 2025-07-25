require'nvim-treesitter.configs'.setup {
        sync_install = false,

        highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
        },

        indent = {
                enable = true,
        },

        context = {
                enable = true,
        },

        refactor = {
                smart_rename = {
                        enable = true,
                        -- Assign keymaps to false to disable them, e.g. `smart_rename = false`.
                        keymaps = {
                                smart_rename = "<leader>rn",
                        },
                },
                
        },
}

require'treesitter-context'.setup{
        enable = true, 
        multiwindow = true, -- Enable multiwindow support.
        max_lines = 3, -- How many lines the window should span. Values <= 0 mean no limit.
        min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        line_numbers = true,
        multiline_threshold = 20, -- Maximum number of lines to show for a single context
        trim_scope = 'inner', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
        mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
        -- Separator between context and content. Should be a single character string, like '-'.
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
        separator = '>',
        zindex = 10, -- The Z-index of the context window
        on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
