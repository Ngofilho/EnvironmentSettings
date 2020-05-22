
set nocompatible
filetype off
let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"execute pathogen#infect()
"  autocmd StdinReadPre * let s:std_in=1
"  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NeoBundle (plugin manager) config
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))



""""""""""""""
" Plugins list
""""""""""""""
NeoBundle 'tpope/vim-surround'            "  Ease surrounding
"NeoBundle 'honza/vim-snippets'            "  The best snippet engine you'll ever need
"NeoBundle 'sirver/ultisnips'
"NeoBundle 'tomtom/tcomment_vim'           "  Comment like a boss
"NeoBundle 'raimondi/delimitmate'          "  If you miss IDE features like character closing
"NeoBundle 'tpope/vim-endwise'             "  If you miss IDE features like block closing
"NeoBundle 'kien/ctrlp.vim'                "  Fuzzyfinder, yes vim has and has more than one
NeoBundle 'scrooloose/nerdtree'           "  A file explorer
NeoBundle 'othree/html5.vim'              "  Improves vim html5 syntax and indentation
"NeoBundle 'tpope/vim-rails'               "  If you use these plugins correctly you'll never
"NeoBundle 'vim-ruby/vim-ruby'             "  look for an IDE again
NeoBundle 'drslump/vim-syntax-js'         "  Improves vim js syntax and indentation
NeoBundle 'vim-scripts/JavaScript-Indent'
"NeoBundle 'gundo'                         "  Gundo - Undo, in small pieces
"NeoBundle 'minibufexpl.vim'               "  Mini-buffer explorer
"NeoBundle 'vim-scripts/TaskList.vim'      "  Better Organize your TODOs
NeoBundle "scrooloose/syntastic"           "  Syntastic - Lint for most of the used languanges
NeoBundle 'ryanoasis/vim-devicons'         "  Set up fonts used on NERDTree - DejaVu Font Awesome font
NeoBundle 'mattn/emmet-vim.git'            "  Emmet plugin to auto complete HTML, CSS, etc.
NeoBundle 'vim-airline/vim-airline'        "  Set up the Airline plugin to enhance the status bar
NeoBundle 'vim-airline/vim-airline-themes' "  Set up the Airline plugin themes 
"NeoBundle 'edkolev/tmuxline'               "  Set up the Tmux alike plugin to enhance the status bar


call neobundle#end()
""""""""""""""
" End of Plugins list
""""""""""""""

filetype plugin indent on " required
NeoBundleCheck            " Check if any bundle is not installed on startup
syntax on                 " Enable syntax recognition

set autoindent

"""""""""""""
" Vim options
"""""""""""""
set relativenumber
set number          " Show line numbers
set ignorecase      " Ignore case while searching
set smartcase       " If you search with all lower case letters the search will be case insensitive.
set infercase       " If you type any upper case letter the search will be case sensitive
set hlsearch        " Highlight search term
set incsearch       " Go to the matching pattern while you type
set smartindent     " Indent really smartly
set tabstop=2       " Configure tabs to two spaces
set softtabstop=2   " Configure tabs to two spaces
set shiftwidth=2    " Configure tabs to two spaces
set shiftround      " Configure tabs to two spaces
set expandtab       " Insert white spaces when you press tab
set wildmenu        " zsh like menu
set wildmode=full   " zsh like menu
set wrap            " Break lines wider than the window width
set nrformats=alpha " Increases/Decreases numbers with Ctrl-a/Ctrl-x correctrly
                    " Help from: http://www.slackorama.com/projects/vim/vimrc.html
set showcmd         " Show what command is being typed at the right corner
set ruler           " Show the cursor position all the time
set encoding=UTF-8
set guifont=DejaVuSansMono\ Nerd\ Font:h20
set conceallevel=3

"""""""""""""
" Colorscheme
"""""""""""""
"set background=dark
"colorscheme desert

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Configuracao do Dicionario
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set list
set listchars=eol:$,tab:>-,trail:˜,extends:>,precedes:<,space:␣
set spell spelllang=pt
"https://www.vivaolinux.com.br/artigo/Corretor-Ortografico-no-Vim-Guia-definitivo
set nospell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree Configuration Section - Sessão de Configuracao do NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTRee while starting vim if no file was chosen, and close it when it is the last window.
augroup NERDTreeCustomCommands
  autocmd!
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

"""vimscript
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
 """
 let g:NERDTreeNodeDelimiter = "\u00a0"
 let g:NERDTreeShowIgnoredStatus = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End of NERDTREE Configuration Section - Final Sessão de Configuracao do NERDTREE 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Syntastic Configuration Section - Sessão de Configuracao do Syntastic 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"End of Syntastic Configuration Section - Final Sessão de Configuracao do Syntastic 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Airline Configuration Section - Sessão de Configuracao do Airline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  "let g:airline#extensions#tabline#formatter = 'default'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"End of Airline Configuration Section - Final Sessão de Configuracao do Airline 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TMUX Configuration Section - Sessão de Configuracao do TMUX 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tmuxline#enabled = 0 

let g:tmuxline_preset = 'tmux'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"End of TMUX Configuration Section - Final Sessão de Configuracao do TMUX 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

