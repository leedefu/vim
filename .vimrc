"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim script 
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"just use default leader backslash
"let mapleader = ","

set number 
set autoindent
set shiftwidth=4
set nobackup
set nowritebackup
set history=1000
set showcmd
set incsearch
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""
" config status line

"set statusline=                         " clear statusline
"set statusline+=%F                      " file full path
"set statusline+=%10((%l,%c)%)\          " line and column
"set statusline+=%b,0x%-8B\              " current char
"set statusline+=%P                      " percentage of file
"""""""""""""""""""""""""""""""""""""""""""""""""

"set statusline+=%r 
"set statusline+=%m 
"set statusline+=%M 
"
""separator
"set statusline+=:(ascii:
""value of character under cursor
"set statusline+=%b 
"set statusline+=/0x
"set statusline+=%B 
"set statusline+=)
"
""shown right side
""set statusline+=%= 
"
"""""""""""""""""""""""""""""""""""""""""
""show current line and total line
""separator :(line:
"set statusline+=:(line:
""current line
"set statusline+=%l 
""separator /
"set statusline+=/
""total line
"set statusline+=%L 
""separator ,
"set statusline+=,column:
""column
"set statusline+=%c 
""separator )
"set statusline+=)
""""""""""""""""""""""""""""""""""""""""

"syntax on
"if &t_Co > 2 || has("gui_running")
    ":set hlsearch
"endif

"filetype plugin indent on
set fileformat=unix
set expandtab
set tabstop=4
set softtabstop=4


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set color scheme
":if has("gui")
"    ":colorscheme lucius
":else
"    :colorscheme desert
":endif
colorscheme desert
"syntax enable 
"set background=dark
"colorscheme solarized 
"if has("gui")
"   "set guifont=ÐÂËÎÌå:h12:cGB2312
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Initial ctags
if $TAGS_PATH != ""
    set tags=$TAGS_PATH
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Key maps"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Insert current time format yy-mm-dd hh:mm:ss
noremap <F2> a<C-R>=strftime("%c")<CR><Esc>

"List the recently opened files
"Need MRU plugin [http://www.vim.org/scripts/script.php?script_id=521]
"noremap <F4> :MRU<cr>
noremap <leader>of :MRU<cr>

"TlistToggle
"Need taglist plugin [http://www.vim.org/scripts/script.php?script_id=273]
"noremap <F6> :TlistToggle<cr>
noremap <leader>tl :TlistToggle<cr>

"noremap <F7> :NERDTree<cr>
"noremap <F8> :NERDTreeClose<cr>
nnoremap <leader>t :NERDTree<cr>
nnoremap <leader>tc :NERDTreeClose<cr>

"save file with Leader + s
noremap <leader>s :w<cr>

"quit file with Leader + q
noremap <leader>q :q<cr>

"force to quit file with Leader + fq
noremap <leader>fq :q!<cr>

"quit all files with Leader + qa
noremap <leader>qa :qa<cr>

"force to quit all files with Leader + fqa
noremap <leader>fqa :qa!<cr>

"change cwd to directory of current file 
noremap <leader>cd :cd %:p:h<cr>

"quickly open ~/.vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
"nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"reload vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"add "" for word
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

"uppercase
:nnoremap <leader>U viwU

"lowercase
:nnoremap <leader>u viwu

"instead of <esc>
:inoremap jk <esc> 

if has ("gui")
    set go=
endif

"EOF"
"
set nocompatible

"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"vim script learning
"echo ">^.^<"

