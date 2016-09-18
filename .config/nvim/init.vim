""
"" init.vim  --  Configuration
""
"" Taken from http://vim-bootstrap.com/
""
"" Modified by Eleazar Díaz Delgado

if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.config/nvim/plugged')

" Close buffers without close vim
" Plug 'moll/vim-bbye'
Plug 'rbgrouleff/bclose.vim'
" A right undo redo for editing
Plug 'mbbill/undotree'
" Fast selection of things, dirs, buffers, commands
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" File manager
Plug 'francoiscabrol/ranger.vim'
" A improved start screen for vim
Plug 'mhinz/vim-startify'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
" Plug 'hecal3/vim-leader-guide'

" {{{ Personalization
" Theme
Plug 'chriskempson/base16-vim'
" Icons in file (nerdtree)
Plug 'ryanoasis/vim-devicons'
" Beaty status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-two-firewatch'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
" Shows lines to align with same indentation
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
" }}}

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'bronson/vim-trailing-whitespace'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Haskell Bundle
Plug 'eagletmt/neco-ghc'
Plug 'eagletmt/ghcmod-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'itchyny/vim-haskell-indent'
"Plug 'enomsg/vim-haskellConcealPlus'
"Plug 'parsonsmatt/intero-neovim'

"" Python Bundle
Plug 'klen/python-mode'
" Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'

"" Rust bundle
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

"" Shells things
Plug 'dag/vim-fish'

"" Others languages common
Plug 'peterhoeg/vim-qml'
Plug 'cespare/vim-toml'
Plug 'digitaltoad/vim-pug'
Plug 'kchmck/vim-coffee-script'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

" Required:
filetype plugin indent on

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
"set encoding=utf-8 " Give a error on :source %
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Spaces. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

"" Map leader to ' '
let mapleader="\<Space>"

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
" set bomb  " dangerous
set binary

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/usr/bin/fish

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
filetype on
filetype plugin indent on
set ruler
set number
set relativenumber

set showtabline=0
" normal move with cursors in end and start of line
set whichwrap+=<,>,h,l,[,]

set cursorline
" NOTE To Future: Don't set guifg it remove colors in current line
autocmd BufEnter * highlight CursorLine guibg=#300030
autocmd InsertEnter * highlight CursorLine guibg=#003000
autocmd InsertLeave * highlight CursorLine guibg=#300030

" Transparent background
" NOTE If Problems: au ColorScheme * hi NonText ctermbg=none guibg=none
au ColorScheme * hi Normal ctermbg=none guibg=none

" Disable visualbell
set visualbell t_vb=

let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
" colorscheme base16-default-dark
" colorscheme two-firewatch
colorscheme base16-oceanicnext

set termguicolors

set mousemodel=popup
set t_Co=256
set guioptions=egmrti

if &term =~ '256color'
    set t_ut=
endif

"" Let change cursor shape to ibeam or block depends of mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Scroll offset
set scrolloff=1

"" Status bar
set laststatus=2

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

let g:startify_bookmarks =
            \ [ {'v': '~/.config/nvim/init.vim'}
            \ , {'f': '~/.config/fish/config.fish'}
            \ , {'x': '~/.xmonad/xmonad.hs'}
            \ , {'t': '~/.tmux.conf'}
            \ ]

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

autocmd FileType java setlocal omnifunc=javacomplete#Complete

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:UltiSnipsExpandTrigger="<tab>"

"*****************************************************************************
" Mappings
"*****************************************************************************
" Terminal easy exit
tnoremap <leader><Esc> <C-\><C-n>

imap jk <Esc>

map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>x :bn<CR>

"" Close buffer
nnoremap <Leader>c :Bclose<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Set working directory
"" nnoremap <leader>. :lcd %:p:h<CR>

" snippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)


"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

nmap <leader>y "*y
vmap <leader>y "*y
nmap <leader>d "*d
vmap <leader>d "*d
nmap <leader>p "*p
vmap <leader>p "*p

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"*****************************************************************************
"" Haskell
"*****************************************************************************
" Show types in completion suggestions
let g:necoghc_enable_detailed_browse = 1
" Resolve ghcmod base directory
au FileType haskell let g:ghcmod_use_basedir = getcwd()

augroup haskell
    autocmd!
    set expandtab
    set tabstop=2
    set softtabstop=0
    set shiftwidth=2
    set smarttab
    autocmd! BufWritePost,BufEnter *.hs GhcModCheckAndLintAsync
    "autocmd! BufWritePost,BufEnter *.hs Neomake
    autocmd FileType haskell map <silent> <leader><cr> :noh<cr>:GhcModTypeClear<cr>
    autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
augroup END

"*****************************************************************************
" Rust
"*****************************************************************************
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
    \}

augroup rust
  autocmd!
  autocmd! BufWritePost,BufEnter *.rs Neomake
augroup END

"*****************************************************************************
" Python
"*****************************************************************************

augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4 smartindent
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#force_py_version = 3
let g:jedi#popup_on_dot = 1
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
"let g:jedi#completions_command = "<C-Space>"

"*****************************************************************************
" vim-airline
"*****************************************************************************
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : '',
      \ 'i'  : '',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : '',
      \ 'V'  : 'L',
      \ '' : 'B',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

"*****************************************************************************
" Deoplete
"*****************************************************************************
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#max_list = 1000
let g:deoplete#auto_complete_delay = 50

"*****************************************************************************
" NERDTree configuration
"*****************************************************************************
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'target', '.stack-work', 'node_modules', 'typings', '.git']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>

"*****************************************************************************
" Tagbar
"*****************************************************************************
nmap <silent> <F4> :TagbarToggle<CR>
let g:rustfmt_autosave = 1
let g:tagbar_autofocus = 1

"*****************************************************************************
" FZF Config
"*****************************************************************************
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

noremap <leader>b :Buffer<CR>
noremap <leader>e :Files<CR>
noremap <leader>g :GitFiles<CR>
noremap <C-Space> :Commands<CR>

"*****************************************************************************
"" Table mode
"*****************************************************************************

inoreabbrev <expr> <bar><bar>
          \ s:isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ s:isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

fun! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endf
