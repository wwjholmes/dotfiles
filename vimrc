nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

augroup comment
    autocmd!
    let maplocalleader = ","
    autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>
    autocmd FileType python     nnoremap <buffer> <localleader>c I# <esc>
    autocmd FileType erlang     nnoremap <buffer> <localleader>c I% <esc>
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set colorcolumn=120
set expandtab
set shiftwidth=4
set smartindent
set tabstop=4
set visualbell

"disable YCM
let g:loaded_youcompleteme = 1

"https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#add-cocnvim-to-your-vims-runtimepath
"let g:coc_node_path = '/usr/local/n/versions/node/12.16.3/bin/node'

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
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'henrik/vim-indexed-search'
Plugin 'junegunn/fzf.vim'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/badwolf'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox" awesome colorscheme
set background=dark

let mapleader=','
if exists(":Tabularize")
    nnoremap <Leader>= :Tabularize /=<CR>
    vnoremap <Leader>= :Tabularize /=<CR>
    nnoremap <Leader>, :Tabularize /,\zs<CR>
    vnoremap <Leader>, :Tabularize /,\zs<CR>
    nnoremap <Leader>:: :Tabularize /::\zs<CR>
    vnoremap <Leader>:: :Tabularize /::\zs<CR>
endif

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam,*pem     " MacOSX/Linux

" vim-gitgutter settings
autocmd BufWritePost * GitGutter

set cursorline
hi CursorLine term=bold cterm=bold ctermbg=240  guibg=grey30

set hlsearch
hi Search cterm=NONE ctermfg=red ctermbg=240

" With the following mapping a user can press F5 to delete all trailing  whitespace. 
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>


" mac-laptop
set rtp+=/usr/local/opt/fzf

" devserver
set rtp+=~/.fzf

nnoremap <C-p> :Files<CR>
nnoremap <C-S> :Tags<CR>
nnoremap <C-S-i> :BTags<CR>

let g:airline_theme='simple'

autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

" Following are some useful mappings to make search results appear in the middle of the screen:
nnoremap G Gzz
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap } }zz
nnoremap { {zz

nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

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
nnoremap gs :Bg <C-r><C-w><CR>

" reload syntax highlighting
:nnoremap <Leader>f :filetype detect

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"
" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
 " Gif config
map <leader>l <Plug>(easymotion-lineforward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>h <Plug>(easymotion-linebackward)
 "
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"LeaderF mapping
map <leader>t :LeaderfFunction<cr>
