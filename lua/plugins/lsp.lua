return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "cssls",
                "html",
                "jdtls",
                "lua_ls",
                "pyright",
                "ts_ls",
                "intelephense",
            },
        },
        dependencies = {
            {
                "mason-org/mason.nvim",
                opts = {}
            },
            "neovim/nvim-lspconfig",
        },
    }
}
