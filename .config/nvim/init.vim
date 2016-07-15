
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/plugged')


" Add or remove your plugins here
Plug 'moll/vim-bbye'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'


Plug 'chriskempson/base16-vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'bronson/vim-trailing-whitespace'
Plug 'neomake/neomake'
""Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'alunny/pegjs-vim'
Plug 'easymotion/vim-easymotion'

Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'junegunn/vim-easy-align'

Plug 'vim-pandoc/vim-pandoc'
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax'

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

"" Custom bundles
"" Haskell Bundle
Plug 'eagletmt/neco-ghc'
Plug 'eagletmt/ghcmod-vim'
Plug 'neovimhaskell/haskell-vim'
"Plug 'parsonsmatt/intero-neovim'

"" Python Bundle
Plug 'davidhalter/jedi-vim'

"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'
"Plug 'marijnh/tern_for_vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'

"" Purescript
Plug 'FrigoEU/psc-ide-vim'
Plug 'raichoo/purescript-vim'

"" Ruby Bundle
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'

"" HTML Bundle
Plug 'amirh/HTML-AutoCloseTag'
Plug 'hail2u/vim-css3-syntax'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'

"" Rust bundle
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

"" Shells things
Plug 'Shougo/vimshell'
Plug 'dag/vim-fish'

call plug#end()

" Required:
filetype plugin indent on

let g:deoplete#enable_at_startup = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
let g:rustfmt_autosave = 1

"End dein Scripts-------------------------

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
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

"" Map leader to ,
let mapleader="\<Space>"

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
set bomb
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

"" set rtp+=~/.fzf


"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

let no_buffers_menu=1

let base16colorspace=256  " Access colors present in 256 colorspace

set background=dark
colorscheme base16-default-dark

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\14   " FantasqueSansMono Nerd Font Regular\14

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  else
    set guifont=FantasqueSansMono Nerd Font Regular:h14
  endif
else
  let g:CSApprox_loaded = 1
endif

if &term =~ '256color'
  set t_ut=
endif

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif


" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1


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

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

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

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

set autoread


function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

"*****************************************************************************
"" Mappings
"*****************************************************************************
" Terminal easy exit
tnoremap <Esc> <C-\><C-n>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

noremap <leader>b :Buffer<CR>
noremap <leader>e :Files<CR>

map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>x :bn<CR>

"" Close buffer
nnoremap <Leader>c :Bdelete<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>


nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" ctrlp.vim
" set wildmode=list:longest,list:full
" set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
" let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|tox|ico|git|hg|svn))$'
" let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
" let g:ctrlp_use_caching = 1

" " The Silver Searcher
" if executable('ag')
"   set grepprg=ag\ --nogroup\ --nocolor
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   let g:ctrlp_use_caching = 0
" endif

" cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
" noremap <leader>b :CtrlPBuffer<CR>
" let g:ctrlp_map = '<leader>e'
" let g:ctrlp_open_new_file = 'r'
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" snippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:deoplete#enable_at_startup = 1

" syntastic
" let g:syntastic_cpp_compiler='clang++'
" let g:syntastic_cpp_compiler_options=' -std=c++11'
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" let g:syntastic_style_error_symbol = '✗'
" let g:syntastic_style_warning_symbol = '⚠'
" let g:syntastic_auto_loc_list=1
" let g:syntastic_aggregate_errors = 1

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell
set visualbell t_vb=

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif


"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
" noremap ,o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>

let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=4|set shiftwidth=4|set expandtab softtabstop=4 smartindent
augroup END



" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4 smartindent
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#smart_auto_mappings = 0

" syntastic
"let g:syntastic_python_checkers=['python', 'flake8']

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1

" Show types in completion suggestions
let g:necoghc_enable_detailed_browse = 1
" Resolve ghcmod base directory
au FileType haskell let g:ghcmod_use_basedir = getcwd()

autocmd! BufWritePost,BufEnter * Neomake

augroup haskell
  autocmd!
  set expandtab
  autocmd FileType haskell map <silent> <leader><cr> :noh<cr>:GhcModTypeClear<cr>
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
augroup END

" let g:haskellmode_completion_ghc = 0

" Not using ruby currently
" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1

" augroup vimrc-ruby
"   autocmd!
"   autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
"   autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
" augroup END

" let g:tagbar_type_ruby = {
"     \ 'kinds' : [
"         \ 'm:modules',
"         \ 'c:classes',
"         \ 'd:describes',
"         \ 'C:contexts',
"         \ 'f:methods',
"         \ 'F:singleton methods'
"     \ ]
" \ }

" " RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" " Ruby refactory
" nnoremap <leader>rap  :RAddParameter<cr>
" nnoremap <leader>rcpc :RConvertPostConditional<cr>
" nnoremap <leader>rel  :RExtractLet<cr>
" vnoremap <leader>rec  :RExtractConstant<cr>
" vnoremap <leader>relv :RExtractLocalVariable<cr>
" nnoremap <leader>rit  :RInlineTemp<cr>
" vnoremap <leader>rrlv :RRenameLocalVariable<cr>
" vnoremap <leader>rriv :RRenameInstanceVariable<cr>
" vnoremap <leader>rem  :RExtractMethod<cr>

"" Include user's local vim config
if filereadable(expand("~/.config/nvim/local_init.vim"))
  source ~/.config/nvim/local_init.vim
endif
