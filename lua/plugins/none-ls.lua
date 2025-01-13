return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.golangci_lint,
                null_ls.builtins.formatting.pint,
                null_ls.builtins.formatting.blade_formatter,
            },
        })

        vim.keymap.set("n", "<leader>q", vim.lsp.buf.format, {})
    end,
}
