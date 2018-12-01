" suiljex

" [===========================================================================]
" | PLUGINS 
" [===========================================================================]
" https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"
try
  call plug#begin('~/.vim/plugged')

" Project tree
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" ColorScheme
  Plug 'morhetz/gruvbox'

" Search
  Plug 'rking/ag.vim'

" Initialize plugin system
  call plug#end()
catch
endtry

" [===========================================================================]
" | COLORSCHEME 
" [===========================================================================]

try
  colorscheme solarized
  " colorscheme gruvbox
  set background=dark
catch
endtry

" [===========================================================================]
" | CUSTOM 
" [===========================================================================]

set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set clipboard=unnamed                 " Clipboard support (OSX)
set laststatus=2                      " Show status line on startup
set splitright                        " Open new splits to the right
set splitbelow                        " Open new splits to the bottom
set lazyredraw                        " Reduce the redraw frequency
set ttyfast                           " Send more characters in fast terminals
set nowrap                            " Don't wrap long lines
set listchars=extends:→               " Show arrow if line continues rightwards
set listchars+=precedes:←             " Show arrow if line continues leftwards
set nobackup nowritebackup noswapfile " Turn off backup files
set noerrorbells novisualbell         " Turn off visual and audible bells
set expandtab shiftwidth=2 tabstop=2  " Two spaces for tabs everywhere
set history=500
set hlsearch                          " Highlight search results
set ignorecase smartcase              " Search queries intelligently set case
set incsearch                         " Show search results as you type
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set showcmd                           " Show size of visual selection

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" [===========================================================================]
" | INTERFACE 
" [===========================================================================]

set number            " Enable line numbers
set scrolloff=5       " Leave 5 lines of buffer when scrolling
set sidescrolloff=10  " Leave 10 characters of horizontal buffer when scrolling

" Showcase comments in italics
highlight Comment cterm=italic gui=italic

" [===========================================================================]
" | INDENTATION  
" [===========================================================================]

" Кол-во символов пробелов, которые будут заменять \t
set tabstop=2
set shiftwidth=2
set smarttab
" Автозамена по умолчанию
set expandtab

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

" Показываем табы в начале строки точками
set list
set listchars=tab:>·,trail:·,precedes:#,extends:#,nbsp:·

set noundofile

" russian language fix
set langmap=ё`,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,Ё~,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>

" encodings
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r

" [===========================================================================]
" | MAPPING 
" [===========================================================================]

map <C-n> :NERDTreeToggle<CR>
