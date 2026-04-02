return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        local keymap = vim.keymap.set

        keymap("n", "<leader>a", function() harpoon:list():add() end, { desc = "Lägg till i Harpoon" })
        
        keymap("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Visa Harpoon" })

        keymap("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon fil 1" })
        keymap("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon fil 2" })
        keymap("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon fil 3" })
        keymap("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon fil 4" })
        keymap("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon fil 5" })
        keymap("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "Harpoon fil 6" })
        keymap("n", "<leader>7", function() harpoon:list():select(7) end, { desc = "Harpoon fil 7" })
        keymap("n", "<leader>8", function() harpoon:list():select(8) end, { desc = "Harpoon fil 8" })
        keymap("n", "<leader>9", function() harpoon:list():select(9) end, { desc = "Harpoon fil 9" })





    end
}
