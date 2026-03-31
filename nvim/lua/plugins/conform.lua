return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" }, 
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>f",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "Formatera filen",
        },
    },
    opts = {
        formatters_by_ft = {
            c = { "clang-format" },
            python = { "black" },
            cs = { "csharpier" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
}
