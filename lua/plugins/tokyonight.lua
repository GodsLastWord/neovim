return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        })

        vim.api.nvim_set_hl(0, "NeoTreeFileStatsHeader", { link = "NeoTreeRootName" })
        vim.api.nvim_set_hl(0, "NeoTreeFileStats", { link = "NeoTreeFile" })

        vim.cmd.colorscheme("tokyonight-moon")
    end
}
