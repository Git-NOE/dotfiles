" 各種設定について

" 行番号を表示させる 
set number

set autoindent
" Tabをスペースに変換する
set expandtab
" ファイル上でのTabの幅
set tabstop=2
" カーソルの位置を表示する
" set ruler

" 自動インデントや>>でインデントするときの幅
set shiftwidth=2
" エンコーディングをUTF-8にする
set encoding=utf-8
set smartindent
" カーソルがある行を強調表示する
set cursorline
" シンタックスハイライトをonにする
syntax on
" 入力中のコマンドを表示する
set showcmd
" インクリメンタル検索（一致する文字列があれば検索する）を有効にする
set incsearch
" ハイライトサーチを無効にする
set nohlsearch
" 検索時に英大小文字の区別を無視する
set ignorecase
" クリップボードを有効にする
set clipboard+=unnamed
" カラースキームの設定
colorscheme molokai
" .swpファイルの出力場所の設定
set directory=~/.vim/tmp
"backspaceでの削除に関する設定
set backspace=indent,eol,start
" マウスを有効にする設定
set mouse=a
" Tab補完に関する設定
" longestは一致する部分までを補完、fullはTabを押すごとに次の候補を補完していく
set wildmode=longest,full
" set wildmenu wildmode=list:fullとすると、候補がlist upされ、候補が補完されていく
" 画面一番下にステータスラインを表示させる
" %Fはファイルの絶対パス、%tはファイル名、%=は左右をわけるセパレータの表示
set laststatus=2
set statusline=%F%=

"===================================================
"C言語用の設定
"C言語スタイルのインデントを自動で入れる
set cindent

"====================================================
"Fortran用の設定
"自由形式で開くようにする
let fortran_free_source=1
let fortran_fold=1
au! BufRead,BufNewFile *.f90 let b:fortran_do_enddo=1

"====================================================
"LaTeX用の設定
 " NeoBundle 'lervag/vimtex'
 " NeoBundle 'thinca/vim-quickrun'

"===================================================
"Python用の設定
"<C-e>でcompileする
autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %

"==================================================
"ruby用の設定
"<C-e>でcompileする
autocmd BufNewFile,BufRead *.rb nnoremap <C-e> :!ruby %

"===================================================
"perl用の設定
"<C-e>でcompileする
autocmd BufNewFile,BufRead *.pl nnoremap <C-e> :!perl %

"===================================================

"===================================================
" vi互換モードで動作させない
if &compatible
  set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/shimanoe/.vim/bundle/neobundle.vim/

  " Required:
  call neobundle#begin(expand('/Users/shimanoe/.vim/bundle'))

  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

"===================================================
"NeoBundleのプラグイン
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'Shougo/vimfiler'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'Shougo/neocomplcache'

"===================================================
"NERDTreeの設定
  nnoremap <silent><C-t> :NERDTree<CR>
  "ブックマークを初期表示
  let g:NERDTreeShowBookmarks=1
  " ファイル名が指定されてVimが起動した時にはNERDTreeを表示しない
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 

"===================================================
  " You can specify revision/branch/tag.
  NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

  " Required:
  call neobundle#end()

  " Required:
  filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
  NeoBundleCheck
  "End NeoBundle Scripts-------------------------
