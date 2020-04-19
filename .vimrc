" ==================== VIMRC KATOLIKYAN ====================


" PLAGINS ====================================================================================================

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter' "Side gid-diff for files
Plug 'kien/ctrlp.vim' "Searching files in derrictoryes
Plug 'easymotion/vim-easymotion'
Plug 'morhetz/gruvbox'
Plug 'mileszs/ack.vim'

" LINK https://vimawesome.com/plugin/python-mode -------
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" LINK https://vimawesome.com/plugin/jedi-vim ------
"Plug 'davidhalter/jedi-vim'

"Plug 'ayu-theme/ayu-vim'
"set termguicolors     " enable true colors support
"let ayucolor='light'  " for light version of theme
"let ayucolor='mirage' " for mirage version of theme
"let ayucolor='dark'   " for dark version of theme
"colorscheme ayu

call plug#end()


" SETUP ====================================================================================================

"--- DEFAULTS ---"
syntax on				        " highlight the syntax
set number
set hls                 " highlights for search
set is                  " ink search
set ruler               " show line and column number
set showcmd             " show (partial) command in status line
let g:mapleader=','     " setting up (mapping) leader key to ','

"--- IDENTATION ---"
set expandtab           " enter spaces when tab is pressed
set textwidth=80        " break lines when line length increases
set tabstop=2           " use 4 spaces to represent tab
set softtabstop=2
set shiftwidth=2        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set backspace=indent,eol,start  " make backspaces more powerfull

"--- PLUGINS ---"
"--scheme
colorscheme gruvbox
set background=dark
"--nerdtree
let NERDTreeShowHidden=1
"--pymode
"let g:pymode_rope = 0
"--YCM
let g:ycm_filetype_blacklist = {
      \ 'python': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'leaderf': 1,
      \ 'mail': 1
      \}


"MAPINGS ==================================================================================================

"--nerdtree
map <C-n> :NERDTreeToggle<CR>
"--easymotion
map <Leader> <Plug>(easymotion-prefi)
"--split window swapping
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
