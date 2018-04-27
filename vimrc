" installer instructions
""""source CURRENT_FILE_PATH

"tab shortcuts
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

syntax on

set smartindent

"styling
set term=xterm-256color
try
	colorscheme codeschool
catch ^Vim\%((\a\+)\)\=:E185
	"wait till I add the colorscheme into '~/.vim/colors'
endtry

set hlsearch
highlight Search cterm=NONE ctermbg=130 ctermfg=15

highlight Normal ctermbg=232

highlight NonText ctermbg=234

set tabstop=4
set shiftwidth=4

"display tabs and trailing space
set list listchars=tab:.\ ,trail:X
highlight SpecialKey ctermfg=DarkGray ctermbg=16

set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=236  gui=NONE guifg=DarkGrey guibg=NONE
