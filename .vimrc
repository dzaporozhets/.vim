call pathogen#infect()
syntax on
filetype plugin indent on
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
