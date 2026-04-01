return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
        vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP actions',
            callback = function(event)
                local opts = { buffer = event.buf }
                local map = vim.keymap.set

                map('n', 'K', vim.lsp.buf.hover, opts)
                map('n', 'gd', vim.lsp.buf.definition, opts)
                map('n', 'gr', require('telescope.builtin').lsp_references, opts)
                map('n', '<leader>rn', vim.lsp.buf.rename, opts)
                map('n', '<leader>ca', vim.lsp.buf.code_action, opts)
                
            end,
        })

        vim.lsp.config("clangd", { capabilities = capabilities })
        vim.lsp.enable("clangd")

        vim.lsp.config("pyright", { capabilities = capabilities })
        vim.lsp.enable("pyright")

        vim.lsp.config("csharp_ls", { capabilities = capabilities })
        vim.lsp.enable("csharp_ls")
    end
}
