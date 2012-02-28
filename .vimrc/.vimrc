" установить keymap, чтобы по Ctrl+^ переключался на русский и обратно
    set keymap=russian-jcukenwin
" по умолчанию - латинская раскладка
    set iminsert=0
" по умолчанию - латинская раскладка при поиске
    set imsearch=0
" Включает отображение номеров строк
    set number 
" заставляет работать вим в "полную силу"
    set nocompatible
" считать, что фон белый
    set background=light
" включить подсветку синтаксиса
    syntax on
" установить автоотступ
    set autoindent     
" Включим автоотступы для новых строк
    set ai
" вставлять пробелы, а не табы
    set expandtab
" величина отступа
    set softtabstop=4       
" игнорировать прописные/строчные при поиске
    set ignorecase
" разрывать длинные строки
    set wrap
" Перенос строк по словам, а не по буквам
    set linebreak
" проверка скобок
    set showmatch
" Не бибикать
    set visualbell
" Список кодировок файлов для автоопределения
    set fileencodings=utf-8,cp1251,koi8-r,cp866
" Игнорировать регистр при поиске
    set ic
" Подсвечивать результаты поиска
    set hls is
" Подсветка строки, в которой находится в данный момент курсор
    set cursorline
" Удобный для восприятия текста отступ
    set foldcolumn=2
" Keep 50 lines of command line history
    set history=50
" Отключить создание файлов бекапа и свапа
    set nobackup
    set nowritebackup
" Отключить создание swap файлов
    set noswapfile
" Общий буфер
    set clipboard=unnamed,exclude:cons\\\|linux
" Типы файлов
    filetype on
" Отображать статусную строку для каждого окна
    set laststatus=2
" Информативная статус-строка
    set statusline=%t\ %y%m%r[%{&fileencoding}]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P
" Сколько строк вверху и внизу экрана показывать при скроллинге
    set scrolloff=3
" Если не хочется видеть перенесённые строки ...
    set showbreak=\ \ \ \ \ \ >
" Символ > будет зелёным
    hi NonText guifg=#0030ff ctermfg=green
" Меню смены кодировок
    set wildmenu
    set wcm=<Tab>
    menu Encoding.utf-8 :e ++enc=utf8 <CR>
    menu Encoding.windows-1251 :e ++enc=cp1251<CR>
    menu Encoding.koi8-r :e ++enc=koi8-r<CR>
    menu Encoding.cp866 :e ++enc=cp866<CR>
    map <F6> :emenu Encoding.<TAB>
" Если при вставке побились отступы у куска кода, и он стал "лесенкой"
    inoremap <silent> <C-u> <ESC>u:set paste<CR>.:set nopaste<CR>gi
