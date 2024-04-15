filetype plugin indent on
syntax on

colo quiet+2
set cursorline
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
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
set guioptions=
set guicursor=a:blinkon0
set nowrap
set wildignore+=*.class*
set nowrapscan
set mouse-=a
set guifont=SFMono-Regular:h12
let g:loaded_matchparen=1

let g:netrw_banner=0

function SetBackground()
    if v:os_appearance == 0
        set bg=light
    else
        set bg=dark
    endif
endfunction


call SetBackground()
autocmd OSAppearanceChanged * :call SetBackground()

function SyntaxUnderCursor()
    echo synIDattr(synID(line("."), col("."), 1), "name")
endfunction

nnoremap <silent><Leader><Leader> :noh<CR>
"nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>
nnoremap <Leader>g :grep -rinIs "" ./<Left><Left><Left><Left>
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprev<CR>
nnoremap <C-x> :bd<CR>
nnoremap <C-j> 10j
nnoremap <C-k> 10k
nnoremap <Leader>re :Re<CR>
nnoremap <Leader>e :Ex<CR>
nnoremap <Leader>vr :so ~/.vimrc<CR>

inoremap <silent>jk <Esc>
