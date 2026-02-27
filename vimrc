" --- General Settings ---
set nocompatible
filetype off
syntax on

set colorcolumn=120
set expandtab
set shiftwidth=4
set smartindent
set tabstop=4
set visualbell
set number relativenumber

" --- Search Settings ---
set hlsearch
set cursorline
hi Search cterm=NONE ctermfg=red ctermbg=240
hi CursorLine term=bold cterm=bold ctermbg=240 guibg=grey30

" Trailing whitespace cleanup (F5 to trigger)
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" --- Plugins (Vundle) ---
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
call vundle#end()
filetype plugin indent on

" --- Colorscheme ---
colorscheme gruvbox
set background=dark
let g:airline_theme='simple'

" --- Key Mappings ---
let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Tabularize mappings
if exists(":Tabularize")
    nnoremap <Leader>= :Tabularize /=<CR>
    vnoremap <Leader>= :Tabularize /=<CR>
    nnoremap <Leader>, :Tabularize /,\zs<CR>
    vnoremap <Leader>, :Tabularize /,\zs<CR>
endif

" FZF mappings
nnoremap <C-p> :Files<CR>
nnoremap <C-S> :Tags<CR>
nnoremap <C-S-i> :BTags<CR>

" EasyMotion mappings
map  / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <leader>l <Plug>(easymotion-lineforward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>h <Plug>(easymotion-linebackward)

" --- Auto-commands ---
augroup numbertoggle
   autocmd!
   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" --- Paths & Environment ---
" Homebrew fzf path
if isdirectory('/opt/homebrew/opt/fzf')
  set rtp+=/opt/homebrew/opt/fzf
endif
