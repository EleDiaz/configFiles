
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.config/nvim'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/deoplete.nvim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')

call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs.git')

call dein#add( 'tpope/vim-commentary')
call dein#add( 'tpope/vim-fugitive')
call dein#add( 'ctrlpvim/ctrlp.vim')

call dein#add('bronson/vim-trailing-whitespace')
call dein#add('jiangmiao/auto-pairs')
call dein#add('majutsushi/tagbar')
call dein#add("Yggdroot/indentLine")

call dein#add('bronson/vim-trailing-whitespace')
call dein#add('scrooloose/syntastic')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('alunny/pegjs-vim')

"" Custom bundles
"" Haskell Bundle
call dein#add("eagletmt/neco-ghc")
call dein#add("dag/vim2hs")
call dein#add("pbrisbin/vim-syntax-shakespeare")

"" Python Bundle
call dein#add("davidhalter/jedi-vim")

"" Javascript Bundle
call dein#add('jelera/vim-javascript-syntax')
call dein#add('Quramy/tsuquyomi')
call dein#add('leafgarland/typescript-vim')


"" HTML Bundle
call dein#add('amirh/HTML-AutoCloseTag')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('gorodinskiy/vim-coloresque')
call dein#add('tpope/vim-haml')
call dein#add('mattn/emmet-vim')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

let g:deoplete#enable_at_startup = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


"End dein Scripts-------------------------
