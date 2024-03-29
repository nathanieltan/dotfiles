call plug#begin('~/.config/nvim/autoload/plugged')

    " Dracula Theme
    Plug 'dracula/vim', { 'as': 'dracula' }
    " LSP and Completion support
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Context Syntax Tree for highlighting
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


call plug#end()
