return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
        local status_ok, configs = pcall(require, "nvim-treesitter.configs")
        if not status_ok then
            return 
        end

        configs.setup({
            ensure_installed = { 
                "c", 
                "python", 
                "c_sharp", 
                "lua", 
                "vim", 
                "vimdoc", 
                "query",
                "bash",
                "markdown"
            },
            highlight = { 
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },  
        })
    end,
}
