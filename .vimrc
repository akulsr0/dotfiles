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

" VimPlug 
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'preservim/nerdtree'
  Plug 'mattn/emmet-vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'sbdchd/neoformat' " Do `npm i -g prettier` if giving issues
call plug#end()

" NERDTree Settings
let NERDTreeShowHidden=1

" Emmet Settings
let g:user_emmet_leader_key = '<C-m>' " Enter any emmet abbreviation and press `ctrl + m` then press `,`

" Use node_modules/.bin/prettier instead of looking for prettier on $PATH 
let g:neoformat_try_node_exe = 1

" Auto Commands
" Autocomplete for js
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" Set theme as gruvbox
autocmd vimenter * ++nested colorscheme gruvbox

" Format on leaving insert mode
autocmd InsertLeave *.{js,ts,jsx,tsx,css,json} Neoformat prettier

" Key mapping
map <C-b> :NERDTreeToggle<CR>
map <C-o> :GFiles<CR>
inoremap <silent><expr> <c-space> coc#refresh() " ctrl + space -> show suggestions
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>" " tab confirm selected suggestion

