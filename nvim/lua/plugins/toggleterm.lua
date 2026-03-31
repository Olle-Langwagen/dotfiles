return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<C-t>]],
            hide_numbers = true,
            shade_terminals = true,
            start_in_insert = true,
            insert_mappings = true,
            terminal_mappings = true,
            persist_size = true,
            direction = "float",
            float_opts = {
                border = "curved",
                winblend = 0,
            }
        })

        function _G.set_terminal_keymaps()
            local opts = {buffer = 0}
            vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]], opts)
            
            vim.keymap.set('t', '<C-t>', '<cmd>ToggleTerm<CR>', opts)
        end

        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end
}
