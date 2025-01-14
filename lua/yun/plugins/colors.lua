return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = {
                    transparency = true,
                    italic = false,
                },
            })

            vim.cmd [[colorscheme rose-pine]]
        end,
    },
    {
        "tiagovla/tokyodark.nvim",
        opts = {
            transparent_background = true,
            styles = {
                comments = { italic = false },
                keywords = { italic = false },
                identifiers = { italic = false },
                functions = {},
                variables = {},
            }
        },
        config = function(_, opts)
            require("tokyodark").setup(opts)
            -- vim.cmd [[colorscheme tokyodark]]
        end,
    }
}
