local packer = require("packer")

packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        use({ "neovim/nvim-lspconfig" })
        use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
        use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
        use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
        use 'L3MON4D3/LuaSnip' -- Snippets plugin
        use 'windwp/nvim-autopairs'
        use 'numToStr/Comment.nvim'
    end,
    config = {
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        },
        git = {
            default_url_format = "https://gitclone.com/github.com/%s"
        }
    }
})
