return {
    {
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup {
                -- dark, darker, cool, deep, warm, warmer --
                style = "warmer",

                code_style = {
                    comments = "italic",
                    keywords = "none",
                    functions = "none",
                    strings = "none",
                    variables = "none"
                },

                -- Show/hide background --
                transparent = true,

                -- Custom Highlights --
                colors = {
                    grey = "#606060",
                    fg = "#d6d6d6"
                },

                -- Plugins Config --
                -- diagnostics = {
                --      darker = true, -- darker colors for diagnostic
                --      undercurl = true, -- use undercurl instead of underline for diagnostics
                --      background = true, -- use background color for vrtual text
                -- },
            }
            require("onedark").load()
        end
    }
}
