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
