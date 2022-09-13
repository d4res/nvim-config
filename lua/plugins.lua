local packer = require("packer")

packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        use({ "neovim/nvim-lspconfig" })

        use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
        use 'hrsh7th/cmp-path' -- Autocompletion plugin
        use 'hrsh7th/cmp-buffer' -- Autocompletion plugin
        use 'hrsh7th/cmp-cmdline' -- Autocompletion plugin
        use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
        use "hrsh7th/cmp-nvim-lua"
        use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

        use 'L3MON4D3/LuaSnip' -- Snippets plugin
        use 'hrsh7th/cmp-vsnip'
        use 'hrsh7th/vim-vsnip'

        use 'windwp/nvim-autopairs'
        use 'numToStr/Comment.nvim'

        use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }

        use "akinsho/toggleterm.nvim"
        use 'voldikss/vim-floaterm'

        -- use 'glepnir/dashboard-nvim'
        use 'mhinz/vim-startify'
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { {'nvim-lua/plenary.nvim'} }
        }

        use {
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons",
            config = function()
                require("trouble").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        }

        use {
            "ray-x/lsp_signature.nvim",
        }

        use{
            'weilbith/nvim-code-action-menu',
            cmd = 'CodeActionMenu',
        }

        use {
            'lewis6991/gitsigns.nvim',
        }
    end,
    config = {
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        },
        git = {
            default_url_format = "git@github.com:%s"
        }
    }
})
