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
            vim.keymap.set("n", "<A-u>", ":BufferLineCyclePrev<CR>", opts)
            vim.keymap.set("n", "<A-o>", ":BufferLineCycleNext<CR>", opts)
            vim.keymap.set("n", "<A-w>", ":Bdelete<CR>", opts)
            vim.keymap.set("n", "<A-d>", ":Bwipeout<CR>", opts)
            vim.keymap.set("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", opts)
            vim.keymap.set("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", opts)
            vim.keymap.set("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", opts)
            vim.keymap.set("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", opts)
            vim.keymap.set("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", opts)
            vim.keymap.set("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>", opts)
            vim.keymap.set("n", "<A-7>", ":BufferLineGoToBuffer 7<CR>", opts)
            vim.keymap.set("n", "<A-8>", ":BufferLineGoToBuffer 8<CR>", opts)
            vim.keymap.set("n", "<A-9>", ":BufferLineGoToBuffer 9<CR>", opts)
            vim.keymap.set("n", "<A-$>", ":BufferLineGoToBuffer -1<CR>", opts)
        end
    }
}
