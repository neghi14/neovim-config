return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            disable_filetype = { "TelescopePrompt", "spectre_panel" },
            disable_in_replace_mode = true,
            disable_in_visualblock = false,
            enable_afterquote = true,
            enable_bracket_in_quote = true,
        })
    end,
}
