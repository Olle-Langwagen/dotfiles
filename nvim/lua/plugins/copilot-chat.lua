return {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
        { "zbirenbaum/copilot.lua" }, 
        { "nvim-lua/plenary.nvim", branch = "master" }, 
    },
    opts = {
        model = "gpt-5.3-codex",
        window = {
            layout = "vertical",
            width = 0.3,
        },
        auto_insert_mode = true,
    },
    keys = {
        {
            "<leader>cc",
            "<cmd>CopilotChatToggle<cr>",
            desc = "Toggla Copilot Chat",
        },
    },
}
