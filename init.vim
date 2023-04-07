" Configuración cambio modo y línea de modos
set ttimeoutlen=10
set noshowmode

" Encoding | Codificación

set encoding=UTF-8

" Enable line numbers | Habilita números de línea en el lateral
set number relativenumber

" Enable mouse support | Habilita interacción del ratón con el cursor en modo Insert
set mouse=i

" Use the system clipboard | Usa el portapapeles del sistema, en vez del propio
set clipboard=unnamedplus

" Enable auto-completion | Habilita una forma sencilla de autocompletado
set completeopt=menuone,longest,preview
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Set the default tab width to 4 spaces | Define el tabulado como 4 espacios
set tabstop=4
set shiftwidth=4
set expandtab

" Enable folding | Permite recoger código para una mejor vista
set foldmethod=indent
set foldlevel=5

" Highlight search results | Resalta los resultados de búsqueda
set hlsearch
set incsearch

" Various keybindings | Keybinds variadas:

" Quick exit without saving | Salida rápida sin guardar
    nnoremap <C-q> :q!<CR>


" Terminal autohide numbers | Automatización esconder números en terminal

autocmd TermOpen * setlocal nonumber


" NERDTree config (keyboard shortcuts and UI) |Configuración NERDTree (keybinds y UI)

silent nnoremap <C-n> :NERDTreeToggle<CR>
let  NERDTreeShowHidden=1

" Habilitamos las fuentes de Powerline (de mis otros scripts) y la caché.

let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1

" Set the color scheme | Lugar definido para esquemas de colores custom

let g:airline_theme='dark'

" Copy and distribute freely at your own risk - In Spanish and English


" Enable syntax highlighting | Habilita marcado de texto en colorines
syntax on

" Enable filetype detection | Habilita la detección de formato de archivos
filetype plugin indent on

" Plugins go here | Plugins van aquí (Manager: vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'farmergreg/vim-lastplace'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'plasticboy/vim-markdown'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
call plug#end()

" Configuración cambio modo y línea de modos
set ttimeoutlen=10
set noshowmode

" Encoding | Codificación

set encoding=UTF-8

" Enable line numbers | Habilita números de línea en el lateral
set number relativenumber

" Enable mouse support | Habilita interacción del ratón con el cursor en modo Insert
set mouse=i

" Use the system clipboard | Usa el portapapeles del sistema, en vez del propio
set clipboard=unnamedplus

" Enable auto-completion | Habilita una forma sencilla de autocompletado
set completeopt=menuone,longest,preview
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Set the default tab width to 4 spaces | Define el tabulado como 4 espacios
set tabstop=4
set shiftwidth=4
set expandtab

" Enable folding | Permite recoger código para una mejor vista
set foldmethod=indent
set foldlevel=5

" Highlight search results | Resalta los resultados de búsqueda
set hlsearch
set incsearch

" NVim-commentary fix for $USER
let g:commentary_user = $USER

" Various keybindings | Keybinds variadas:

" Quick exit without saving | Salida rápida sin guardar
    nnoremap <C-q> :q!<CR>


" Terminal autohide numbers | Automatización esconder números en terminal

autocmd TermOpen * setlocal nonumber


" NERDTree config (keyboard shortcuts and UI) |Configuración NERDTree (keybinds y UI)

silent nnoremap <C-n> :NERDTreeToggle<CR>
let  NERDTreeShowHidden=1

" Habilitamos las fuentes de Powerline (de mis otros scripts) y la caché.

let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1

" Set the color scheme | Lugar definido para esquemas de colores custom

let g:airline_theme='dark'

