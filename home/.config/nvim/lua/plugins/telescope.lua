return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "danielfalk/smart-open.nvim",               dependencies = "kkharji/sqlite.lua" },
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("smart_open")

        vim.keymap.set("n", "<leader><leader>", require("telescope").extensions.smart_open.smart_open)
        vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
        vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep)
        vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
        vim.keymap.set("n", "<leader>fe", function()
            require("telescope.builtin").find_files({
                cwd = "~",
                search_dirs = { "~/Repos/", "~/Nextcloud/" },
                file_ignore_patterns = { "venv", ".venv", "%.docx", "%.pyi", "%.pyc", "%.png", "%.jpg", "%.pdf", "%.svg", "%.note" },
                hidden = true,
            })
        end)
    end,
}
