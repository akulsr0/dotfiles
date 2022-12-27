" Defaults
set showmode
set guifont=Menlo:h14 " default font to Monaco with font size 16
set number " shows line numbers
set background=dark " Setting dark mode
set autoindent " sets autoindenting on
set copyindent " copy the previous indentation on autoindenting
set shiftwidth=2 " number of spaces to use for autoindenting
set visualbell " disable beep sound
set noerrorbells " disable beep sound
set tabstop=2
set softtabstop=2
set scrolloff=8

" Set Plugin manager as Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Define Plugins
call vundle#begin()
  Plugin 'preservim/nerdtree'
  Plugin 'morhetz/gruvbox'
  Plugin 'junegunn/fzf'
  Plugin 'junegunn/fzf.vim'
call vundle#end()

" NERDTree Settings
let NERDTreeShowHidden=1

" Set theme as gruvbox
autocmd vimenter * ++nested colorscheme gruvbox

" Key mapping
map <C-b> :NERDTreeToggle<CR>
map <C-o> :GFiles<CR>