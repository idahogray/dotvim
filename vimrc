call pathogen#incubate()
call pathogen#helptags()

"From Martin Brochhaus Pycon APAC 2012 video
"www.youtube.com/watch?v=YhqsjUUHj6g
" ******************************************************************
"Automatically load changes from .vimrc when it is changed and saved
autocmd! bufwritepost .vimrc source %

"Better copy/paste
"--------------------------------------------------------------------
"Makes the clipboard behave as you would expect with any other editor
set clipboard=unnamed

"Allows toggling of how paste behaves in relation to the indent level
" of the text being pasted in
"Pressing <F2> in normal mode toggles the paste option and displays
" the value
" vim.wikia.com/wiki/Toggle_auto-indenting_for_code_past#Paste_toggle
nnoremap <F2> :set invpaste paste?<CR>
"Toggles the paste option in insert mode
set pastetoggle=<F2>
"Displays whether paste is turned on in insert mode
set showmode
"--------------------------------------------------------------------

"Make backspace key behave as expected
set backspace=indent,eol,start

"Remap the <Leader> key
let mapleader = ","

"Bind nohl
"Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Quick save with ,s combination
noremap <Leader>s :update<CR>
vnoremap <Leader>s <C-C>:update<CR>
inoremap <Leader>s <C-O>:update<CR>

" ******************************************************************

"Turn on highlighting of search matches
set hlsearch

"Turn on relative line numbering
set rnu

"Have a buffer be hidden when it has unsaved changes and a new buffer 
"opened
set hidden

"Force myself to use hjkl instead of arrow keys, but only in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>


"Needed for riv
syntax on
if has("autocmd")
	filetype plugin indent on
endif

"Set the color scheme to somethat that (hopefully) works in terminals and
"in the gui gvim
colorscheme ron
