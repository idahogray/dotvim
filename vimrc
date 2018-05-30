" let g:python3_host_prog = 'C:\ProgramData\Miniconda3\python.exe'
set pythonthreedll=C:\Users\kgray\AppData\Local\Programs\Python\Python36-32\python36.dll
set pyxversion=3

" Specify a directory for plugins
call plug#begin('~\vimfiles\plugged')
Plug 'cjrh/vim-conda'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'fholgado/minibufexpl.vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'maralla/completor.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" Automatically load changes from init.vim when it is changed and saved
autocmd! bufwritepost vimrc source %

" Use spacebar to toggle folding
nnoremap <space> za

" Force the use of hjkl instead of arrow keys,
" but only in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Make indentation easier by re-selecting the rows after
" the indentation action
vnoremap < <gv
vnoremap > >gv

" Make the clipboard behave as you would expect with any other editor
" Puts the yanked items in the Windows clipboard
set clipboard=unnamed

" Make backsapce key behave as expected
set backspace=indent,eol,start

" Turn on hybrid line numbering so it shows the line number
" for the cursor line and relative numbering for everything else
set relativenumber
set number

" Make the status line always be visible
set laststatus=2

" Have the buffer be hidden when it has unsaved changes and a new buffer
" opened
set hidden

" Use the python-language-server as the linter
" This will use all of the available linters: pylint, flake8, etc.
let g:ale_linters = {'python': ['pyls'],}

" Set the initial fold level to show the top level
" functions and classes
set foldlevel=1

" let g:conda_startup_msg_suppress = 1

" Set the python interpreter to be the one from python.org which
" has jedi installed in it
let g:completor_python_library = 'C:\Users\kgray\AppData\Local\Programs\Python\Python36-32'

" Turn on column highlighting for column 80 but only when the line is longer
" than 80 characters
" From OSCON 2013 talk by Damian Conway: More Instantly Better Vim
" https://www.youtube.com/watch?v=aHm36-na4-4
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Make navigating split windows easier and quicker
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable the wildmenu
" This is useful for the vim-conda plugin and the CondaChangeEnv command
set wildmenu

" Use %% to expand %:h when in command mode
" %:h expands to the path of the active buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Use the dark solarized color scheme
set background=dark
colorscheme solarized
