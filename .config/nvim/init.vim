set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ayu-theme/ayu-vim'
Plugin 'preservim/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'Nopik/vim-nerdtree-direnter'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set bg=dark
set mouse=a
set number

set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu

"autocmd vimenter * NERDTreeTabsOpen
map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'
let g:NERDTreeMouseMode=3

"map <C-n> :NERDTreeToggle<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"tab mappings
noremap <C-1> 1gt
noremap <C-2> 2gt
noremap <C-3> 3gt
noremap <C-4> 4gt
noremap <C-5> 5gt
noremap <C-6> 6gt
noremap <C-7> 7gt
noremap <C-8> 8gt
noremap <C-9> 9gt
noremap <C-t> :tabnew<CR>
noremap <C-w> :tabclose<CR>

cmap nt tabnew
cmap ft tabf
