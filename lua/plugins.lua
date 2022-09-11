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
