if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'                           " default settings
Plug 'altercation/vim-colors-solarized'             " colour scheme
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                             " fuzzy file search
call plug#end()

:let mapleader = " "

" Highlight search results
set hlsearch

" Color scheme config
syntax enable
set background=dark
colorscheme solarized

" Fuzzy file search config
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Clear search results
map <Leader>/ :noh<Enter>

" Quick exit input mode
imap jk <Esc>
imap kj <Esc>

" Fuzzy file search in working directory
map <C-P> :FZF<Enter>
