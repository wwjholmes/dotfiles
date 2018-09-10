set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set tabstop=4
set shiftwidth=4
set expandtab

colorscheme badwolf         " awesome colorscheme

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'jimenezrick/vimerl'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'navicore/vissort.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-erlang/erlang-motions.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "-"
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Abbreviations
iabbrev wenjingw@ wenjingw@whatsapp.com
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let g:syntastic_always_populate_loc_list = 0 
let g:airline#extensions#whitespace#enabled = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 0 
"
" let g:syntastic_check_on_wq = 0
"     let g:syntastic_mode_map = {
"         \ "mode": "active",
"         \ "active_filetypes": ["erl", "py"],
"         \ "passive_filetypes": []}

" nerdtree settings
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-j> :NERDTreeFind<CR>

" How can I open a NERDTree automatically when vim starts up?
" autocmd vimenter * NERDTree

" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" How to config custom symbols
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


let NERDTreeIgnore=['\.vim$', '\~$', '\.beam$', '\.pem$']

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam,*pem     " MacOSX/Linux

" vim-gitgutter settings
autocmd BufWritePost * GitGutter

" vim tagbar settings
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :TagbarOpen fj<CR>
autocmd VimEnter * nested :call tagbar#autoopen(1)
autocmd FileType * nested :call tagbar#autoopen(0)

set cursorline
hi CursorLine term=bold cterm=bold ctermbg=DarkBlue guibg=grey30

" With the following mapping a user can press F5 to delete all trailing  whitespace. 
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>


set rtp+=/home/wenjingw/.linuxbrew/opt/fzf
set rtp+=/usr/local/opt/fzf
noremap <C-p> :Files<CR>

let g:airline_theme='simple'
