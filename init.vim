
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible' " ?
Plug 'junegunn/seoul256.vim' " ?
Plug 'rrethy/vim-hexokinase', { 'do': 'cd ./hexokinase/hexokinase && go build' } " HexCode Highlighting
Plug 'tpope/vim-fugitive' " Git Plugin
Plug 'ryanoasis/vim-devicons' " Self Explanatory
Plug 'preservim/nerdtree' " Nerd Tree, Netrw Replacement
Plug 'vim-airline/vim-airline' " Status Bar
Plug 'ctrlpvim/ctrlp.vim' " File Finder
Plug 'tree-sitter/tree-sitter' " Tree Sitter

Plug 'vim-airline/vim-airline-themes' " Themes for Airline, who could have guessed

" Nerd Tree Specific
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Syntax highlight
Plug 'Xuyuanp/nerdtree-git-plugin' " Self explanatory
Plug 'PhilRunninger/nerdtree-visual-selection' " Self Explanatory

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Regular Things
set relativenumber
set clipboard+=unnamedplus
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set hidden
set nohlsearch
set noerrorbells
set nowrap
set ignorecase
set incsearch
set scrolloff=10
set cmdheight=2
set path+=**
set wildmenu
set termguicolors
set hidden
set tabpagemax=8
let mapleader = " "

" Fast Netrw Access
nnoremap <leader>m ::e .<Enter>

" Going through Tabs with Alt Arrow Keys
nmap <A-left> :tabprev<CR>
nmap <A-right> :tabnext<CR>

" Nvim suspension doesn't work in Windows Terminal
nmap <C-z> <Nop>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
inoremap <A-down> <Esc>:m .+1<CR>==gi
inoremap <A-up> <Esc>:m .-2<CR>==gi

set fdls=99
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Netrw Settings
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_banner=0

let g:Hexokinase_highlighters = ['foregroundfull']
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeNaturalSort=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrowExpandable=""
let NERDTreeDirArrowCollapsible=""
let g:NERDTreeHighlightCursorline = 0
autocmd BufEnter NERD_* setlocal rnu
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['xml'] = "CB6F6F" " sets the color of css files to blue

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xml'] = ''
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
