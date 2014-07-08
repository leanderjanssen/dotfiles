" be iMproved
set nocompatible

filetype off       " required!

" Enable Vundle plugin manager
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" Additional bundles:
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'rodjek/vim-puppet'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'edkolev/promptline.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'chase/vim-ansible-yaml'
" Bundle 'jlanzarotta/bufexplorer'

filetype plugin indent on  " required!

set bs=2
set ts=4
set sw=4
set number
set ruler
set hidden
syntax on
set background=dark
colorscheme solarized
set noshowmode
" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:rehash256 = 1
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h13
set t_Co=256
" set term=xterm-256color
set termencoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set list
set listchars=tab:▸\ ,eol:¬,trail:.

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
let g:promptline_preset = {
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'z' : [ promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]}

" Source the vimrc file after saving it
if has ("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" Map space to colon
nmap <space> :

" Map escape key to jj -- much faster
imap jj <esc>

autocmd bufwritepost .vimrc source $MYVIMRC
