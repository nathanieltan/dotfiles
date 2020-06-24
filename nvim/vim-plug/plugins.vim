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
    " Conquer of Completion, because I fail at going minimal
    Plug 'neoclide/coc.nvim', {'branch': 'release'} 
    " Snippets with CoC
    Plug 'honza/vim-snippets'    
    " Markdown Previewing
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
call plug#end()
