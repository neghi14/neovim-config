return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end

    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tailwindcss", "dockerls", "emmet_ls", "gopls", "biome" },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.biome.setup({})
            lspconfig.tailwindcss.setup({})
            lspconfig.gopls.setup({})
            lspconfig.dockerls.setup({})

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>q", vim.lsp.buf.format, {})
        end
    }

}
