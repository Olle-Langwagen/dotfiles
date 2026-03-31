return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local builtin = require("telescope.builtin")
        
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Hitta filer (Find Files)' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Sök inuti filer (Live Grep)' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Visa öppna flikar/buffertar' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Sök i Neovims manual' })
    end
}
