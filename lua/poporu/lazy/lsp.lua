return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
                -- servers = {
                --     basedpyright = {
                --         settings = {
                --             basedpyright = {
                --                 analysis = {
                --                     typeCheckingMode = "standard",
                --                     diagnosticMode = "workspace",
                --                 },
                --             },
                --         },
                --     },
                -- },
            },
        },
        config = function ()
                -- config = function()
                --     local capabilities = require('blink.cmp').get_lsp_capabilities()
                --     require("lspconfig").lua_ls.setup { capabilities = capabilities }
                -- end,

                local capabilities = vim.lsp.protocol.make_client_capabilities()

                capabilities = vim.tbl_deep_extend('force', capabilities, require('blink.cmp').get_lsp_capabilities({}, false))

                capabilities = vim.tbl_deep_extend('force', capabilities, {
                    textDocument = {
                        foldingRange = {
                            dynamicRegistration = false,
                            lineFoldingOnly = true
                        }
                    }
                }
            )
        end
    },
}
