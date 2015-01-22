" My vim rc.
" author: knst

set showcmd
set ruler
" показывать закрывающую скобку
set showmatch
set showtabline=2
" всегда показывать статус
set laststatus=2
set title
"set titlestring=%t%(\ %m%)%(\ %r%)%(\ %h%)%(\ %w%)%(\ (%{expand(\.%:p:~:h\.)})%)\ -\ VIM
" диалоги вместо сообщений
set confirm
" set visualbell
" не выгружать буфер при переключении на другой файл
set hidden
set t_Co=256
set background=dark
set number
set smartindent
" удалять по tab'у, добавлять столько же
set smarttab
set autoindent
set tabstop=4
set expandtab
" размер сдвига при нажатии > <
set shiftwidth=4
" показать нечитаемые символы
" set list
" подсветка текущей строки
" set cursorline
" сохранять отступы
set pastetoggle=
" автоматическое перечитывание файла после изменения
set autoread

" разбивать окно снизу или справа
set splitbelow
set splitright

set foldmethod=manual
" set foldmethod=syntax

" дополнение
set completeopt=longest,menuone

if has("autocmd")
    au FileType cpp,c,pl set cindent


endif


set hlsearch
set incsearch
nnoremap * *N
" ищет с учётом регистра, если есть хоть одна заглавная
set smartcase
set infercase

set dir=~/.vim/swap

set fileencodings=utf-8,cp1251,koi8-r,cp866

set wildmenu
set wcm=<TAB>
"set wildmode=list:longest,full

" Переключение табов (вкладок) с помощью SHIFT+TAB и TAB
map <S-TAB> :tabprevious<CR>
nmap <S-TAB> :tabprevious<CR>
imap <S-TAB> <Esc>:tabprevious<CR>i
map <TAB> :tabnext<CR>
"nmap <TAB> :tabnext<CR>
"imap <TAB> <Esc>:tabnext<CR>i

" Открытие\закрытие новой вкладки по CTRL+T и CTRL+W
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>a
"nmap <C-w> :tabclose<CR>
"imap <C-w> <Esc>:tabclose<CR>

imap jk <Esc>

set textwidth=0 wrapmargin=0
