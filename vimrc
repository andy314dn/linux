"execute pathogen#infect()

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on           " enable syntax processing
set number
set cursorline
set mouse=a
set tabstop=4

filetype indent on
filetype plugin indent on

au BufNewFile,BufRead *.v,*.vh,*.args,*.f,*.verilog set ft=verilog
au BufNewFile,BufRead *.psm set ft=asm

"set noignorecase
set smartcase
set incsearch
set hlsearch

nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

highlight DiffText   cterm=bold ctermfg=10    ctermbg=88     guifg=bg        guibg=Red       gui=none
highlight DiffAdd    cterm=bold ctermfg=black                guifg=black     guibg=green
highlight DiffText   cterm=bold ctermfg=red   ctermbg=yellow guifg=red       guibg=yellow
highlight DiffChange cterm=bold ctermfg=none  ctermbg=none   guifg=black     guibg=white
highlight DiffDelete                                         guifg=lightblue guibg=lightblue

"set foldmethod=syntax

