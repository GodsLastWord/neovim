vim.api.nvim_create_autocmd('FileType', {
    pattern = "*",
    callback = function()
        local lang = vim.treesitter.language.get_lang(vim.bo.filetype) or vim.bo.filetype
        local has_parser = vim.treesitter.language.add(lang)

        if has_parser then
            vim.treesitter.start()
        end
    end,
})
