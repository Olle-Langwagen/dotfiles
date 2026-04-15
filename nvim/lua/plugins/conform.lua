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
            cpp = { "clang-format" },
            python = { "black" },
            cs = { "csharpier" },
        },
        formatters = {
            black = {
                prepend_args = { "--line-length", "9999" },
            },
            ["clang-format"] = {
                prepend_args = { "-style={ColumnLimit: 0}" },
            },},
        format_after_save = {
            lsp_fallback = true,
        },
    },
}
