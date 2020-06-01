"Instructions, Resources and Sources
"Install Pathogen on c:\Program Files (x86)\vim\vimfiles\autoload
"Install the plugins on c:\Program Files (x86)\vim\vimfiles\bundle
"https://github.com/vim-airline/vim-airline ==> AirLine
"https://github.com/scrooloose/nerdtree ==> Nerdtree
"https://github.com/ryanoasis/nerd-fonts ==> Fonts For DevIcons
"https://github.com/ryanoasis/vim-devicons ==> Customs Icons
"""""""""""""""""""""""""""""""Options"""""""""""""""""""""""""""""""""""""""""""
set number relativenumber
set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch
set smartindent
set tabstop=2
set softtabstop=2
set shiftround
set expandtab
set wildmenu
set wildmode=full
set wrap
set nrformats=alpha
set showcmd
set ruler
set encoding=utf-8

if has("gui_running")
        if has("gui_gtk2")
                set guifont=Incosolata\ 12
        elseif has("gui_macvim")
                set guifont=Menlo\ Regular:h14
        elseif has("gui_win32")
                set guifont=Consolas:h11:cANSI
                "set guifont=Arimo:h6 "This is line is commented because the Nerd font had been loaded by the console application
        endif
endif
set guifont=DejaVu_Sans_Mono_Nerd_Font_Complete_Mono:h10

augroup BeforeExit
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup end
"""""""""""""""""""""""END OF Options Section"""""""""""""""""""""""""""""""""""

"At Windows OS, the pathogen plugin goes at the folder c:\program files
"(x86)\vim\vimfiles\autoload.
"Pathogen must be at the autoload folder to the bellow instruction properly
"work.
execute pathogen#infect()
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Start NERDTree Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" At Windows the .vimrc goes at ~\.vimrc file for specific users
" and the plugins goes at the c:\program files (x86)\vim\bundles\
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End NERDTree Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Airline Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable_airline_tabline = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End Airline Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Config spell
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"https://www.vivaolinux.com.br/artigo/Corretor-Ortografico-no-Vim-Guia-definitivo
"Address to set dictionary up.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End of config spell
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
