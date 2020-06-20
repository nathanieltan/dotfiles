call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'dracula/vim', { 'as': 'dracula' }
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " Rust-Lang Support
    Plug 'rust-lang/rust.vim'

call plug#end()
