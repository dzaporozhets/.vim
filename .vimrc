call pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on
autocmd vimenter * NERDTree
set autochdir
set nohidden
set number
set hlsearch
set nowrap
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>
map <F2> :NERDTree<CR>
map <F5> :w<CR>
map <F9> :call Ruby19()<CR>
call s:initVariable("g:NERDTreeMapToggleHidden", "I")
colorscheme tango2
inoremap <Nul> <C-n>
let mapleader = ","
set noswapfile
set tabstop=2
set shiftwidth=2
set expandtab

"visual search mappings
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

"convert hash to 1.9 syntax
function! Ruby19()
  %s/:\([^ ]*\)\(\s*\)=>/\1:/g
endfun

fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType php,ruby,cucumber,scss,sass,css,python,erb,haml,js,coffesript,rake,rb autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


" Vim system buffer
"sudo apt-get install vim-gtk
vmap <F2> "+y<CR>

