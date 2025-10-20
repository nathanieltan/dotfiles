call plug#begin('~/.config/nvim/autoload/plugged')

    " Dracula Theme
    Plug 'dracula/vim', { 'as': 'dracula' }
    " Context Syntax Tree for highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Common Lua Functions"
    Plug 'nvim-lua/plenary.nvim'
    " Fuzzy finding and more"
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'folke/which-key.nvim'
    Plug 'p00f/clangd_extensions.nvim'


call plug#end()
