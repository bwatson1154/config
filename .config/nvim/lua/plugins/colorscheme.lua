return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            terminal_colors = false,
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = false,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            inverse = true,
            contrast = "hard",
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = true,
        })
        vim.cmd("colorscheme gruvbox")
    end,
}
