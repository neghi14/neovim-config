local lsps = { "lua_ls", "tailwindcss", "dockerls", "emmet_ls", "gopls", "ts_ls", "svelte", "intelephense" }
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = lsps,
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            for _, lsp in pairs(lsps) do
             lspconfig[lsp].setup({
                capabilities = capabilities,
            })
            end
            vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
