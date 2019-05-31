if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
call plug#end()

:let mapleader = " "

" solarized config
syntax enable
set background=dark
colorscheme solarized

set hlsearch
map <Leader>/ :noh<Enter>   " Clear search results
imap jk <Esc>               " Quick exit input mode
imap kj <Esc>
