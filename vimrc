function VimPluginCheck()
  if !filereadable(expand('~/.vim/autoload/plug.vim'))
    :silent exec "!echo Can not find the plug.vim start to install"
    :silent exec "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  endif
endfunction

call VimPluginCheck()

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes' 
  Plug 'yggdroot/indentline' 
  Plug 'airblade/vim-gitgutter'
  Plug 'morhetz/gruvbox'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end() 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""" Vim Shortcut """""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" first letter represent for the mode in vim
" noremap => no-recursive map

"""""""""""""""""
"" normal mode ""
"""""""""""""""""
let mapleader = " "

nnoremap <C-n> :NERDTreeToggle<CR> 

nnoremap <leader>tj :tabprevious<CR> 
nnoremap <leader>tk :tabnext<CR> 

nnoremap <C-h> :noh<CR> 

" go to the number of line
nnoremap G :<C-U>exe v:count<CR>
" <A-j> move line donw
nnoremap ∆ :m .+1<CR>
" <A-k> move line up
nnoremap ˚ :m .-2<CR> 

" open fold
nnoremap <C-o> zo
" close fold
nnoremap <C-z> zc
" open global search
nnoremap <C-g> :Ag<CR>
" open the go to definition in new tab
nnoremap <C-]> <C-w><C-]><C-w>T

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""" Vim environment setting """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox 
" for searching configuation
set ignorecase
set smartcase

set nowrap

set relativenumber

set number 
set tabstop=2 
set shiftwidth=4
set expandtab 
"set autoindent 
" show which line of cursor
set cursorline 
" high light the search
set hlsearch 
" enable to delete indent, end of line, start
set backspace=indent,eol,start 

set background=dark 
highlight Comment ctermfg=Cyan

set nofixendofline

set clipboard=unnamed

set updatetime=100

set list
set listchars=eol:$,tab:>-,space:·
set tags=tags 
set fdm=manual

let g:indentLine_char = '¦'
let g:AirlineTheme='deus'

