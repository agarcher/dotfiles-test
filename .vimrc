if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ********** PLUGINS **********
"
call plug#begin()
Plug 'tpope/vim-sensible'                           " default settings
Plug 'altercation/vim-colors-solarized'             " colour scheme
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                             " fuzzy file search
call plug#end()

" ********** SETTINGS **********

" Highlight search results
set hlsearch

" Color scheme config
syntax enable
set background=dark
colorscheme solarized

" Fuzzy file search config
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Mac Vim settings
set guifont=Menlo:h15

" ********** KEYBINDINGS **********

:let mapleader = " "

" Clear search results
nmap <Leader>/ :noh<CR>

" Fuzzy file search in working directory
nnoremap <C-P> :FZF<CR>
nnoremap <Leader><space> :FZF<CR>
