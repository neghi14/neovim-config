return {

    -- Theme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    },

    -- UI Line
    {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "dracula",
                },
            })
        end,
    },

    -- Gitsigns
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "+" },
                    change = { text = "+" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                    untracked = { text = "┆" },
                },
                signcolumn = true,
            })
        end,
    },

    -- TabLine
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("barbar").setup({
                animation = true,
                icons = {
                    buffer_index = false,
                    buffer_number = false,
                    button = "",
                    -- Enables / disables diagnostic symbols
                    diagnostics = {
                        [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
                        [vim.diagnostic.severity.WARN] = { enabled = false },
                        [vim.diagnostic.severity.INFO] = { enabled = false },
                        [vim.diagnostic.severity.HINT] = { enabled = true },
                    },
                    filetype = {
                        -- Sets the icon's highlight group.
                        -- If false, will use nvim-web-devicons colors
                        custom_colors = false,

                        -- Requires `nvim-web-devicons` if `true`
                        enabled = true,
                    },
                    separator = { left = "▎", right = "" },

                    -- If true, add an additional separator at the end of the buffer list
                    separator_at_end = true,

                    -- Configure the icons on the bufferline when modified or pinned.
                    -- Supports all the base icon options.
                    modified = { button = "●" },
                    pinned = { button = "", filename = true },

                    -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
                    preset = "default",

                    -- Configure the icons on the bufferline based on the visibility of a buffer.
                    -- Supports all the base icon options, plus `modified` and `pinned`.
                    alternate = { filetype = { enabled = false } },
                    current = { buffer_index = true },
                    inactive = { button = "×" },
                    visible = { modified = { buffer_number = false } },
                },
            })
        end,
    },
}
