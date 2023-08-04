-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { 'tanvirtin/monokai.nvim'}

    use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}

    use {'nvim-treesitter/playground'}

    use {'mbbill/undotree'}

    use {'tpope/vim-fugitive'}

    use {'nvim-tree/nvim-tree.lua'}

    use {'nvim-tree/nvim-web-devicons'}

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.api.nvim_command, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use {'lewis6991/gitsigns.nvim'} -- OPTIONAL: for git status
use {'romgrk/barbar.nvim'}

--use {'karb94/neoscroll.nvim'}

use {'norcalli/nvim-colorizer.lua'}

use { "ellisonleao/gruvbox.nvim" }

use { "christoomey/vim-tmux-navigator" }

use { "catppuccin/nvim", as = "catppuccin" }
end)
