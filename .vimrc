set rtp+=~/.vim/bundle/Vundle.vim
set nu " show line number // Other option is `nonu`
set autoindent 
set wrap "handles behavior on long line of code //  Other option is `wrap`
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " width of scroll bar
set autowrite " Auto save when leaving
set autoread " Auto read when another person is writing
set cindent " 
set bs=eol,start,indent
set history=256
set laststatus=2 " 
set shiftwidth=4 " 
set showmatch " Highlighting matching paranthesis
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " show current cursor
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" Locate the cursor to the last-edited-positoin
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

if has("syntax")
 syntax on
endif

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'vimwiki/vimwiki'
call vundle#end()

colorscheme onedark

"한글에서 esc눌렀을 때 키보드 바꿔주는 설정
autocmd InsertLeave * call libcall('/usr/local/lib/libInputSourceSwitcher.dylib', 'Xkb_Switch_setXkbLayout', 'com.apple.keylayout.ABC')

" Setting For Vim Wiki
set nocompatible
filetype plugin on
let wiki = {}
let wiki.path = '~/CloudStation/oneDrive/johngrib-jekyll-skeleton/_wiki'
let wiki.ext = '.md'
let g:vimwiki_list = [wiki]
let g:vimwiki_conceallevel = 0

"Mapping
:nnoremap :date "=strftime("%Y-%m-%d %H:%M:%S %Z")<CR>P
