return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            require("nvim-tree").setup{}
            local opts = {
                noremap = true,      -- non-recursive
                silent = true,       -- do not show message
            }
            vim.keymap.set("n", "<leader>t", ":NvimTreeOpen<CR>", opts)
            vim.keymap.set("n", "<A-0>", ":NvimTreeFocus<CR>", opts)
        end
    }
}
