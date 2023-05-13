-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- tokyonight theme
    use 'folke/tokyonight.nvim'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use("mbbill/undotree")

    -- harpoon for marking and jumping between multiple files
    use("theprimeagen/harpoon")

    -- for git
    use("tpope/vim-fugitive")

    -- for git signs
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    -- Mason
    -- use {
    --     "williamboman/mason.nvim",
    --     run = ":MasonUpdate", -- :MasonUpdate updates registry contents
    --     requires = {
    --         "mason-lspconfig"
    --     }
    -- }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        run = ":MasonUpdate",
    }


    -- Lsp config
    use("neovim/nvim-lspconfig")

    -- LSP
    -- use {
    --     'VonHeikemen/lsp-zero.nvim',
    --     branch = 'v1.x',
    --     requires = {
    -- 	    -- LSP Support
    -- 	    {'neovim/nvim-lspconfig'},
    -- 	    {'williamboman/mason.nvim'},
    -- 	    {'williamboman/mason-lspconfig.nvim'},

    -- 	    -- Autocompletion
    -- 	    {'hrsh7th/nvim-cmp'},
    -- 	    {'hrsh7th/cmp-buffer'},
    -- 	    {'hrsh7th/cmp-path'},
    -- 	    {'saadparwaiz1/cmp_luasnip'},
    -- 	    {'hrsh7th/cmp-nvim-lsp'},
    -- 	    {'hrsh7th/cmp-nvim-lua'},
    --         {'hrsh7th/cmp-nvim-lsp-signature-help'},

    -- 	    -- Snippets
    -- 	    {'L3MON4D3/LuaSnip'},
    -- 	    {'rafamadriz/friendly-snippets'},
    --     }
    -- }

    -- DAP config
    use("mfussenegger/nvim-dap")

    use("hrsh7th/nvim-cmp")

    -- for status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- git gutter for git diffs
    use("airblade/vim-gitgutter")

    -- for todo
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
            }
        end
    }

    -- color picker
    use 'NvChad/nvim-colorizer.lua'

    -- for transparent background
    use 'xiyaowong/transparent.nvim'

    -- null ls for general purpose lsp configs
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })

    -- gopher gives as many additional features on top for adding struct tag and much more
    use {
        "olexsmir/gopher.nvim",
        requires = { -- dependencies
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    }
end)
