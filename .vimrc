set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set exrc
set secure

autocmd FileType sarl set noexpandtab
" autocmd FileType java set noexpandtab
autocmd FileType pl set noexpandtab
autocmd FileType tex set textwidth=80
autocmd FileType tex set spell
autocmd FileType js set tabstop=2
autocmd FileType js set shiftwidth=2

" set runtimepath^=~/.vim/bundle/ctrlp.vim

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-system-copy'
" Plug 'valloric/youcompleteme'
Plug 'rustushki/JavaImp.vim'
Plug 'vim-scripts/matchit.zip'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

map f :Files<ENTER>
