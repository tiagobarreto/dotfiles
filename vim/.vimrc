" ======================================================================================================================
" Basic Config
" ======================================================================================================================
:syntax on
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab						" turn tab to space
set incsearch
set nowrap
set number
set showcmd
set incsearch
set hlsearch
set nocompatible
set t_Co=256 						" use 256 colours
set ignorecase					" ignore case when searching
set background=dark
set cursorline
colorscheme dc3

set statusline=%F%m%r%h%w\ %=%y\ POS=%v,%l\/%L\ \ %p%%
set laststatus=2

filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete

"set spell
setlocal spelllang=en_ca
set spellfile=~/.vim/spellfile.add

highlight clear 		SpellBad
highlight SpellBad 	term=standout 	ctermfg=1
highlight SpellBad 	term=underline 	cterm=underline
highlight	clear			SpellCap
highlight	SpellCap	term=underline	cterm=underline
highlight	clear			SpellRare
highlight	SpellRare	term=underline	cterm=underline
highlight	clear			SpellLocal
highlight	SpellLocal term=underline	cterm=underline

" Mutt
:autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>
au BufRead /tmp/mutt-* set tw=72
au BufRead /tmp/mutt-* set cc=72
au BufRead /tmp/mutt-* set spell
" LaTeX
:autocmd BufNewFile,BufRead *.tex set ft=tex
:autocmd FileType tex set tw=100
:autocmd FileType tex set cc=100
:autocmd FileType tex set spell
