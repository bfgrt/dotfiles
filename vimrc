set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'L9'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdTree'
Plugin 'easymotion/vim-easymotion'
Bundle 'FuzzyFinder'
Bundle 'altercation/vim-colors-solarized'
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
"Plugin 'SirVer/ultisnips'
" All of your Plugins must be added before the following line
call vundle#end()            " required
"vim +PluginInstall +qall     " to install from the command line
"  or within vim   :PluginInstall

filetype plugin indent on    " required

"remove message Press ENTER or type command to continue
set shortmess=a
set cmdheight=2

let mapleader=","
set noerrorbells
set visualbell
set spelllang=en_us

nmap <silent> <leader>s :set spell!<cr>
nmap <leader>nt         :NERDTree<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
"
"auto-center
nmap   G   Gzz
nmap   n   nzz
nmap   N   Nzz
nmap   }   }zz
nmap   {   {zz


"let &t_Co=256
let t_Co=256
set background=dark

cnoremap   q1    q!
cnoremap   qa1   qa!
cnoremap   qA    qa!
cnoremap   Qa    qa!
cnoremap   QA    qa!

inoremap   jk   <Esc>

"set relativenumber
set number
syntax on

nmap <leader>= :s/ *= */ = /<CR>
nmap <leader>, :s/ *, */, /g<CR>
"if exists(":Tabularize")
    nmap <leader>a! :Tabularize  /!<CR>
    vmap <leader>a! :Tabularize  /!<CR>
    nmap <leader>a= :Tabularize  /=<CR>
    vmap <leader>a= :Tabularize  /=<CR>
    nmap <leader>a: :Tabularize  /::<CR>
    vmap <leader>a: :Tabularize  /::<CR>
    nmap <leader>a, :Tabularize  /,\zs<CR>
    vmap <leader>a, :Tabularize  /,\zs<CR>
    "nmap <leader>a: :Tabularize  /::\zs<CR>
    "vmap <leader>a: :Tabularize  /::\zs<CR>
"endif

hi clear

if exists("syntax_on")
      syntax reset
endif

let g:airline_theme='tomorrow'
"let g:airline_theme='zenburn'
"let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#branch#enabled=1
set laststatus=2


"au InsertEnter * hi Normal ctermfg=70   ctermbg=darkblue " guifg=#5faf00  "ctermbg=234 guibg=#000000
"au InsertLeave * hi Normal ctermfg=113  ctermbg=gray10 " white    " guifg=#87d75f "ctermbg=232 guibg=#1b1d1e

colorscheme desert
set nohlsearch incsearch

set ruler

"tab and indentation, remove trailing spaces
set autoindent ts=4  sts=4 sw=4 expandtab
autocmd bufwritepre *.master :%s/\s\+$//e

"invisible character color (use ctrl-vu 00AC or 25B8)
highlight NonText guifg=#4a4a59
highlight SpecialKey  guifg=#4a4a59
set listchars=tab:▸\ ,eol:¬
set list

"edit .vimrc
autocmd bufwritepost .vimrc source $MYVIMRC

au BufReadPost *.master set syntax=fortran

iabbrev slef   self
iabbrev _i4    integer(kind=4) ::
iabbrev _r4    real(kind=4) ::
iabbrev _c4    complex(kind=4) ::
iabbrev _char  character(*) ::
iabbrev _sl    character(len=80) ::
iabbrev _i8    integer(kind=8) ::
iabbrev _r8    real(kind=8) ::
iabbrev _c8    complex(kind=8) ::

iabbrev _ia4   integer(kind=4), allocatable ::
iabbrev _i4a   integer(kind=4), allocatable ::
iabbrev _ra4   real(kind=4), allocatable ::
iabbrev _r4a   real(kind=4), allocatable ::
iabbrev _ca4   complex(kind=4), allocatable ::
iabbrev _c4a   complex(kind=4), allocatable ::
iabbrev _ia8   integer(kind=8), allocatable ::
iabbrev _i8a   integer(kind=8), allocatable ::
iabbrev _ra8   real(kind=8), allocatable ::
iabbrev _r8a   real(kind=8), allocatable ::
iabbrev _ca8   complex(kind=8), allocatable ::
iabbrev _c8a   complex(kind=8), allocatable ::

iabbrev wrt    write(*, *) 
"iabbrev _magic set dn = `dirname $0 ` ; set bn = `basename $0` ; set here = `( cd ${dn} ; pwd )` ; source ${here}/readCommandLine $* me=${here}/${bn}  addPid=$$


