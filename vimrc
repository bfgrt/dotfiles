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
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'tommcdo/vim-exchange'
Plugin 'sjl/gundo.vim'
"Plugin 'honza/vim-snippets'
"Plugin 'SirVer/ultisnips'
" All of your Plugins must be added before the following line
call vundle#end()            " required
"vim +PluginInstall +qall     " to install from the command line
"  or within vim   :PluginInstall

filetype plugin indent on    " required

" store the annoying back-up file in a tmp directory
"set backupdir=~/vimtmp
"set directory=~/vimtmp
set nobackup
set nowritebackup
set noswapfile
"set nowrapscan 
set smartindent
set smartcase

" ignore whites in diff mode
set diffopt+=iwhite

"remove message Press ENTER or type command to continue
set shortmess=a
set cmdheight=2

noremap    \    ,
let mapleader=","
set noerrorbells
set visualbell
set spelllang=en_us

nnoremap <F5>           :GundoToggle<cr>


nmap <silent> <leader>s :set spell!<cr>
nmap <leader>nt         :NERDTree<CR>
nmap <leader>v          :tabedit $MYVIMRC<CR>
"nmap <leader>m          :edit%:p:h/mdlStruct.txt<cr>:set syntax=fortran<cr>
nmap <leader>m          :vsplit%:p:h/mdlStruct.txt<cr>:set syntax=fortran<cr><c-w>xz.
nmap <leader>t          :vsplit%:p:h/tags<cr>:set syntax=fortran<cr><c-w>x
nmap <leader>ftn        :set syntax=fortran<cr>

" vertical split and a bit of tiding up
nmap <leader>vs          :vsplit<cr>z.<c-w>w

"
"auto-center
nmap   G   Gzz
nmap   n   nzz
nmap   N   Nzz
nmap   }   }zz
nmap   {   {zz
nmap   *   *zz
nmap   g*  g*zz
nmap   #   #zz
nmap   g#  g#zz


"let &t_Co=256
let t_Co=256
set background=dark

cnoremap   q1    q!
cnoremap   qa1   qa!
cnoremap   qA    qa!
cnoremap   Qa    qa!
cnoremap   QA    qa!
cnoremap   Wqa   wqa
cnoremap   W     w
cnoremap   ysbr  ?^\s*subroutine?,  /^\s*end\s*subroutine/ y<cr>
cnoremap   yfct  ?^\s*function?,    /^\s*end\s*function/   y<cr>
inoremap   jk   <Esc>

"set relativenumber
set number
syntax on

"align with line just above
nmap <leader>aa      0dwkywjP0w
"align with line just below
nmap <leader>ab      0dwjywkP0w
"remove spaces around = sign
nmap <leader>u=      :s/ *= */=/e<CR>
"normalize spaces around = sign
nmap <leader>=       :s/ *= */ = /e<CR>+
"normalize spaces around , signs
nmap <leader>,       :s/ *, */, /eg<CR>+
                     
nmap <leader>.       :s/ *, */, /eg<CR>:s/ *= */ = /e<CR>+
inoremap   kj        <Esc>:s/ *, */, /eg<CR>:s/ *= */ = /e<CR>
" f90 comment one line
nmap <leader>!       I!!! <esc>+
" cx one char
nmap <leader>o       cxl

"if exists(":Tabularize")
    nmap <leader>a! :Tabularize  /!<CR>
    vmap <leader>a! :Tabularize  /!<CR>
    nmap <leader>a= :Tabularize  /=<CR>
    vmap <leader>a= :Tabularize  /=<CR>
    nmap <leader>a: :Tabularize  /::<CR>
    vmap <leader>a: :Tabularize  /::<CR>
    nmap <leader>a, :Tabularize  /,\zs<CR>
    vmap <leader>a, :Tabularize  /,\zs<CR>
    nmap <leader>a( :Tabularize  /(<CR>
    vmap <leader>a( :Tabularize  /(<CR>
    nmap <leader>a) :Tabularize  /)<CR>
    vmap <leader>a) :Tabularize  /)<CR>
    nmap <leader>a& :Tabularize  /&<CR>
    vmap <leader>a& :Tabularize  /&<CR>
    nmap <leader>a' :Tabularize  /'<CR>
    vmap <leader>a' :Tabularize  /'<CR>
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

iabbrev nisnt  ninst 
iabbrev sisec  in_si_sec
iabbrev simsec in_si_msec
iabbrev nsamp  in_nsamps
iabbrev nsamps in_nsamps
iabbrev nsmap  in_nsamps
iabbrev wrt    write(*, *) 
iabbrev sbr    subroutine
iabbrev fct    function
iabbrev rtn    return
iabbrev itf    interface
iabbrev mdl    module
iabbrev impl   implicit none
iabbrev aln    xxxxxxxxxxxxxxxxxxxxxxxxx :: xxx
iabbrev flase  false
iabbrev fasle  false
iabbrev errro  error
iabbrev endd0  enddo

" make end statement from a heading
nmap <leader>ee      yypiend <esc>f(Do<esc>2ko    implicit none<cr><esc>kO!!! 
nmap <leader>ud      ^lcwundef<esc>elD+


"iabbrev _magic set dn = `dirname $0 ` ; set bn = `basename $0` ; set here = `( cd ${dn} ; pwd )` ; source ${here}/readCommandLine $* me=${here}/${bn}  addPid=$$


