set nu " show line number // Other option is `nonu`
set autoindent 
set nowrap "handles behavior on long line of code //  Other option is `wrap`
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
set hlsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" Locate the cursor to the last-edited-positoin
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" Encodes the file to Korean
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif

if has("syntax")
 syntax on
endif
