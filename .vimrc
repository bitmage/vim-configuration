"load pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

"disable annoying things
set nocompatible
set modelines=0
set noerrorbells
set vb t_vb=""
map <F1> <nop>
map K <nop>
set autoread

"setup display
syntax on
set list
set listchars=tab:->,trail:-
set number "display line numbers
set numberwidth=5
set wrap
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set ruler
"set colorcolumn=85
"highlight ColorColumn ctermbg=darkred guibg=darkred
"set undofile

"setup search
set incsearch
set nohlsearch
set showmatch
set ignorecase "ignore case when searching
set smartcase
"set gdefault
nnoremap / /\v
vnoremap / /\v

"setup tabs
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"setup editing
set encoding=utf-8
set backspace=eol,indent,start "backspace over end of line, indent, and insertion start
set scrolloff=3
  "set iskeyword+=_,$,@,%,#
  "set linebreak
nnoremap K i<CR><Esc>

" Settings for slimv
let g:lisp_rainbow = 1
let g:slimv_leader = '\'

"setup navigation
nnoremap <tab> %
vnoremap <tab> %
nnoremap j gj
nnoremap k gk

"leader
let mapleader = ","
nnoremap <leader>C :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack 
nnoremap <leader>ft Vatzf
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>eg <C-w><C-v><C-l>:e $MYGVIMRC<cr>
nnoremap <leader>ee <C-w><C-v><C-l>:e .<cr>
nnoremap <leader>eh <C-w><C-v><C-l>:e ~/<cr>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader><space> :noh<cr>
nnoremap <leader>p :r !pbpaste<cr>
nnoremap <leader>r :FufRenewCache<cr>
nnoremap <leader>t :FufCoverageFile<cr>
nnoremap <leader>x :w<cr>:!coffee %<cr>

"conque, fuck yeah
nnoremap <leader>s :ConqueTerm bash<cr>
let g:ConqueTerm_PromptRegex = '^\w\+@[0-9A-Za-z_.-]\+:[0-9A-Za-z_./\~,:-]\+\$'
let g:ConqueTerm_Color = 1
let g:ConqueTerm_ReadUnfocused = 1

"nnoremap <leader>cc !cucumber %:line(".")<cr>
"nnoremap <leader>n <Esc>:let @*=line(".")<CR>

"easy split screen nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"sudo save a file (if you forgot to sudo vim it)
command! W w !sudo tee % >/dev/null

"misc
let g:netrw_liststyle = 3 "display folders in treeview
let g:ackprg="ack -H --nocolor --nogroup --column"

"reload config files when changed
if has("autocmd")
  "autocmd bufwritepost *vimrc  source $MYVIMRC
  "autocmd bufwritepost *gvimrc source $MYGVIMRC
endif
let b:surround_{char2nr('=')} = "<%= \r %>"
let b:surround_{char2nr('-')} = "<% \r %>"
