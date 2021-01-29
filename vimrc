let mapleader = " "
syntax on
set number
set relativenumber
"set cursorline
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
"set ignorecase

noremap j h
noremap i k
noremap k j
noremap J 7h
noremap I 5k
noremap K 5j
noremap L 7l
" go to start of the line
noremap <C-j> 0
" go to end of the line
noremap <C-l> $
noremap h i
noremap H I
noremap M L
noremap <LEADER><CR> :nohlsearch<CR>

" Insert mode return Esc
" Visural mode need Esc or ctrl+c
inoremap jk <Esc>
" Press space twice to jump to the next '<++>' and edit it, i.e., place holder
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
" inoremap


map s <nop>
map S :w<CR>
map Q :q<CR>
map R :MarkdownPreview<CR>

" split the screen, change between window and resize the window
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>j <C-w>h
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" some VI/VIM settings
set nocompatible
set backspace=indent,eol,start
"set mouse=a
"set list
let laststatus=2
set scrolloff=5

" to install you pulg, just copy the plug name from github to the below
" section, and then type:
" PlugInstall
" to install your plug, just comment the below corresponding plug, and then
" delete it under the .vim/plugged directory. 

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
"Plug 'connorholyday/vim-snazzy'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Git
"Plug 'mhinz/vim-signify'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
call plug#end()

"======
" markdown noremap under insert mode
"======
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
" Bold text
autocmd Filetype markdown inoremap <buffer> ,b ****<++><left><left><left><left><left><left>
" Italic text
autocmd Filetype markdown inoremap <buffer> ,i **<++><left><left><left><left><left>
" deleted text
autocmd Filetype markdown inoremap <buffer> ,d ~~~~<++><left><left><left><left><left><left>
" link
autocmd Filetype markdown inoremap <buffer> ,a [](<++>)<++><Esc>F[a
" pictures
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>)<++><Esc>F[a
" enter to next line
"autocmd Filetype markdown inoremap ,p ![](<++>)<++><Esc>F[a

"======
" vim-table-mode
"======
map <LEADER>tm :TableModeToggle<CR>
