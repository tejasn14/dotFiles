syntax on

set clipboard=unnamed

set mouse=a
set smartindent
set noswapfile
"set nobackup
set undodir=~/.vim/undodir
set undofile

call plug#begin('~/.vim/plugged')

Plug 'dkarter/bullets.vim'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'

"Show n of m results in search
Plug 'google/vim-searchindex'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'psliwka/vim-smoothie'

call plug#end()

set ttimeoutlen=5

:imap kj <Esc>

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript', 'js=javascript', 'json=javascript', 'css']
set background=dark
nnoremap ; :
nnoremap : ;
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set hlsearch
set incsearch
set ignorecase

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \]

"Relative Line numbers
set number relativenumber
"Normal line numbers when the window in not in focus
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END 

"Find options
set path+=** 				"find also in the subfiles and folders 
set wildignore+=**/node_modules/** 	"ignores the node modules in the find
set wildmenu 				"for tab completion
set hidden				"also find in hidden buffers
 
" Tab navigation to go to next and previous buffer 
" <CR> is enter key press 
nnoremap [	 :bp<CR>
nnoremap ]	 :bn<CR>
nnoremap \ 	 :buffers<CR>

execute "set <M-j>=\ej"
execute "set <M-k>=\ek"

" Moving lines up or down	
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" for powerline
set laststatus=2
