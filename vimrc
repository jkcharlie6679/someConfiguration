
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
  Plug 'arcticicestudio/nord-vim' 
call plug#end() 

nnoremap <C-n> :NERDTreeToggle<CR> 

nnoremap <C-j> :tabprevious<CR> 
nnoremap <C-k> :tabnext<CR> 


colorscheme nord 

set number 
set tabstop=2 
set shiftwidth=2 
set expandtab 
set autoindent 
set cursorline 
set hlsearch 
set backspace=indent,eol,start 
set background=dark 

set tags=tags 

