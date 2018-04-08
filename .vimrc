
" ========== PLUGINS ==========
" https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Project tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" ColorScheme
Plug 'morhetz/gruvbox'

" Search
Plug 'rking/ag.vim'

" Initialize plugin system
call plug#end()

" ========== COLORSCHEME ==========

colorscheme gruvbox
set background=dark

" ========== CUSTOM ==========

set number    " показывать номера строк

" Кол-во символов пробелов, которые будут заменять \t
set tabstop=2
set shiftwidth=2
set smarttab
" Автозамена по умолчанию
set expandtab

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

" Поиск и подсветка результатов поиска и совпадения скобок
set showmatch
set hlsearch
set incsearch
set ignorecase

" Ленивая перерисовка экрана при выполнении скриптов
set lazyredraw

" Показываем табы в начале строки точками
set list
set listchars=tab:>·,trail:·,precedes:#,extends:#,nbsp:·

set noundofile

" russian language fix
set langmap=ё`,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,Ё~,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>

" encodings
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r

" ========== MAPPING ==========

map <C-n> :NERDTreeToggle<CR>
