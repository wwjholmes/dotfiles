set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

colorscheme badwolf         " awesome colorscheme

set tabstop=4
set shiftwidth=4
set expandtab

" pathogen settings
execute pathogen#infect()
syntax on
filetype plugin indent on


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
map <C-n> :NERDTreeToggle<CR>
map <C-j> :NERDTreeFind<CR>

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
nmap <F8> :TagbarToggle<CR>
nmap <F9> :TagbarOpen fj<CR>
autocmd VimEnter * nested :call tagbar#autoopen(1)
autocmd FileType * nested :call tagbar#autoopen(0)

set cursorline
hi CursorLine term=bold cterm=bold ctermbg=DarkBlue guibg=grey30

" With the following mapping a user can press F5 to delete all trailing  whitespace. 
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>


set rtp+=/home/wenjingw/.linuxbrew/opt/fzf
set rtp+=/usr/local/opt/fzf
map <C-p> :Files<CR>

let g:airline_theme='simple'
