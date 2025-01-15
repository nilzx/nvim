return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons", "famiu/bufdelete.nvim"},
        config = function()
            require("bufferline").setup {
                options = {
                    mode = "buffer",
                    numbers = "ordinal",
                    offsets = {{
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }}
                }
            }
            local opts = {
                noremap = true,      -- non-recursive
                silent = true,       -- do not show message
            }
            vim.keymap.set("n", "<leader>u", ":BufferLineCyclePrev<CR>", opts)
            vim.keymap.set("n", "<leader>o", ":BufferLineCycleNext<CR>", opts)
            vim.keymap.set("n", "<leader>w", ":Bdelete<CR>", opts)
            vim.keymap.set("n", "<leader>d", ":Bwipeout<CR>", opts)
            vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
            vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
            vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
            vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
            vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
            vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
            vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
            vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
            vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
            vim.keymap.set("n", "<leader>$", ":BufferLineGoToBuffer -1<CR>", opts)
        end
    }
}
