"Instructions, Resources and Sources
"Download the Pathogen.vim into c:\Program Files (x86)\vim\vimfiles\autoload
"Git clone the plugins into c:\Program Files (x86)\vim\vimfiles\bundle
"https://github.com/vim-airline/vim-airline ==> AirLine
"https://github.com/scrooloose/nerdtree ==> Nerdtree
"https://github.com/ryanoasis/nerd-fonts ==> Fonts For DevIcons
"https://github.com/ryanoasis/vim-devicons ==> Customs Icons
"https://github.com/powerline/fonts ==> Fonts for Powerline and Airlight
"syntastic
"omni-sharp
"SimplyIFold
"vim-scripts/indentpython.vim
"Valloric/YouCompleteMe => Plugin for Python Auto-Complete. To-be confirmed
"nvie/vim-flake8
"jnurmine/Zenburn
"kien/ctrlp.vim => Searching 'almost' everything
"tpope/vim-fugitive => Perform basic git commands from vim
"http://tpope.io/dispatch.git
"nickspoons/vim-sharpenup
"To add some vi commands to shell -> set editing-mode vi inside ~/.inputrc
"""""""""""""""""""""""""""""""Options"""""""""""""""""""""""""""""""""""""""""""

set number relativenumber
set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch
set smartindent
set shiftround
set expandtab
set wildmenu
set wildmode=full
set wrap
set nrformats=alpha
set showcmd
set ruler
set encoding=utf-8
set foldmethod=manual
set foldlevel=99
set tabstop=2
set softtabstop=2
set clipboard=unnamed


" Common options settings
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
" Flag unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

packadd! matchit

if has("gui_running")
        if has("gui_gtk2")
                set guifont=Incosolata\ 12
        elseif has("gui_macvim")
                set guifont=Menlo\ Regular:h14
        elseif has("gui_win32")
                "set guifont=Consolas:h11:cANSI
                set guifont=DejaVu_Sans_Mono_Nerd_Font_Complete_Mono:h18
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
"work. Perform basic git commands from vim
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
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\~$', '\.swp$'] "ignore files in NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End NERDTree Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Airline Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set t_Co=256
let g:airline_powerline_fonts=1
let g:airline_theme='light'
let g:webdevicons_enable_airline_tabline = 1
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End Airline Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Omnisharp Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_type = 'roslyn'
"let g:OmniSharp_server_path = 'C:\Users\Nilo\.vscode\extensions\ms-dotnettools.csharp-1.22.1\.omnisharp\1.35.3'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End Airline Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Python Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set autoindent
let python_hightlight_all = 1

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

set pythonthreedll=c:\Users\Nilo\AppData\Local\Programs\Python\Python38-32\python38.dll
set pythonthreehome=c:\Users\Nilo\AppData\Local\Programs\Python\Python38-32\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End Python Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Syntastic Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cs_checkers = ['code_checker', 'mcs']
let g:syntastic_css_checkers = ['syntastic-checkers-css']
let g:syntastic_html_checkers = ['syntastic-checkers-html']
let g:syntastic_htm_checkers = ['syntastic-checkers-html']
let g:syntastic_js_checkers = ['syntastic-checkers-javascript']
let g:syntastic_json_checkers = ['syntastic-checkers-json']
let g:syntastic_php_checkers = ['syntastic-checkers-php']
let g:syntastic_py_checkers = ['pylint']
let g:syntastic_sql_checkers = ['syntastic-checkers-sql']
let g:syntastic_ts_checkers = ['syntastic-checkers-typescript']
let g:syntastic_xml_checkers = ['syntastic-checkers-xml']
let g:syntastic_yaml_checkers = ['syntastic-checkers-yaml']
let g:syntastic_yml_checkers = ['syntastic-checkers-yaml']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End Syntastic Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SimplyIFold Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SimpylFold_docstring_preview=1	"Preview docstring in fold text	0
let g:SimpylFold_fold_docstring=1	    "Fold docstrings	            1
let b:SimpylFold_fold_docstring=1	    "Fold docstrings (buffer local)	1
let g:SimpylFold_fold_import=1	    "Fold imports	                1
let b:SimpylFold_fold_import=1	    "Fold imports (buffer local)	1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End SimplyIFold Configuration Section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
