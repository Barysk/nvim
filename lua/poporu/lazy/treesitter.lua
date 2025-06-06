return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    opts = {
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        ensure_installed = {
            "rust",
            "c",
            "cpp",
            "c_sharp",
            "css",
            "html",
            "lua",
            "python",
            "bash",
            "javascript",
            "typecript",
            "help",
            "latex",
            "bibtex",
            "vim",
            "vimdoc",
            "query",
            "markdown",
            "markdown_inline"
        },

        sync_install = false,

        auto_install = true,

        highlight = {
            enable = true,

            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
        },
    }
}


