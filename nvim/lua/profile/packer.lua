-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use ('wbthomason/packer.nvim')

    -- fuzz finder for strings or files
    --use {
    --    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    --    requires = { {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep'} }
    --}
    --use ('nvim-telescope/telescope-live-grep-args.nvim')

    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            { 'nvim-telescope/telescope-live-grep-args.nvim', 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }

    use {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require("telescope").load_extension "frecency"
        end,
    }

    -- color theme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- language lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- cleanly highlights and formats txt in files
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- pins commonly used files to a list for easy reference
    use('theprimeagen/harpoon')
    -- use('mmbill/undotree')

    -- git wrapper
    use('tpope/vim-fugitive')

    -- lsp packeges
    use('williamboman/mason.nvim')

    -- plugin to play nice with tmux
    use ('christoomey/vim-tmux-navigator')
end)
