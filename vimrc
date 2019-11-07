set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set tabstop=4
set shiftwidth=4
set expandtab


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'navicore/vissort.vim'
Plugin 'sjl/badwolf'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-erlang/erlang-motions.vim'
Plugin 'vim-erlang/vim-erlang-compiler'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme badwolf         " awesome colorscheme

let mapleader = "-"
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Abbreviations
iabbrev wenjingw@ wenjingw@whatsapp.com
" set number
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

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam,*pem     " MacOSX/Linux

" vim-gitgutter settings
autocmd BufWritePost * GitGutter

" vim tagbar settings
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :TagbarOpen fj<CR>
"autocmd VimEnter * nested :call tagbar#autoopen(1)
"autocmd FileType * nested :call tagbar#autoopen(0)

set cursorline
hi CursorLine term=bold cterm=bold ctermbg=DarkBlue guibg=grey30

" With the following mapping a user can press F5 to delete all trailing  whitespace. 
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>


set rtp+=/home/wenjingw/.linuxbrew/opt/fzf
set rtp+=/usr/local/opt/fzf
noremap <C-p> :Files<CR>
noremap <C-S> :Tags<CR>
noremap <C-S-i> :BTags<CR>

let g:airline_theme='simple'

autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

" Following are some useful mappings to make search results appear in the middle of the screen:
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

hi Search cterm=NONE ctermfg=red ctermbg=blue
set hlsearch


let repo_initial = 'wa'
let repo_path = system('git rev-parse --show-toplevel')

command! -bang -nargs=* Bg
            \ call fzf#vim#grep(
            \   repo_initial . 'bgs --color=on '.shellescape(<q-args>) .
            \ '| sed "s,^[^/]*/,,"' .
            \ '| sed "s#^#$(git rev-parse --show-toplevel)/#g"', 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('up:55%:hidden', '?'),
            \   <bang>0)
noremap gs :Bg <C-r><C-w><CR>

" Go to last file(s) if invoked without arguments.
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    \ call mkdir($HOME . "/.vim") |
    \ endif |
    \ execute "mksession! " . $HOME . "/.vim/Session.vim"

autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
    \ execute "source " . $HOME . "/.vim/Session.vim"
