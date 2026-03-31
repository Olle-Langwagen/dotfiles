return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons", 
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            view = {
                width = 30, 
                side = "left",
            },
            renderer = {
                group_empty = true,
                highlight_git = true,
            },
            filters = {
                dotfiles = false,
            },
        })

        vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = "Toggla filhanterare", silent = true })
    end,
}
