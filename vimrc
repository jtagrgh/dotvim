filetype plugin indent on
syntax on

colo macvim
set cursorline
set autoindent
set smartindent
set tabstop=4
set shiftwidth=0
set softtabstop=0
set noexpandtab
set ignorecase
set smartcase
set path+=**
set wildmenu
set wildignorecase
set breakindent
set breakindentopt=shift:2
set showbreak=>>
set exrc
set secure
set laststatus=2
set vb t_vb=
set guioptions=
set guicursor=a:blinkon0
set wildignore+=*.class*
set nowrapscan
set guifont=SFMono-Regular:h12
let g:loaded_matchparen=1
let g:netrw_banner=0

function SyntaxUnderCursor()
    echo synIDattr(synID(line("."), col("."), 1), "name")
endfunction

inoremap <silent>jk <Esc>
