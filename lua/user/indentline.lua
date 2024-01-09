local M = {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "VeryLazy",
}

function M.config()
    local icons = require "user.icons"
    local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
    }

    require("ibl").setup {
        indent = {
            char = icons.ui.LineMiddle,
            highlight = highlight,
        },
        whitespace = {
            remove_blankline_trail = true,
        },

        exclude = {
            filetypes = {
                "help",
                "startify",
                "dashboard",
                "lazy",
                "neogitstatus",
                "NvimTree",
                "Trouble",
                "text",
            },
            buftypes = { "terminal", "nofile" },
        },
        scope = { enabled = true },
    }
end

return M
