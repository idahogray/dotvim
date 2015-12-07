set nocompatible
filetype off
syntax on
call pathogen#infect()

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
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Map the sort funtion - useful for sorting import statements in
" python
noremap <Leader>s :sort<CR>

"Easier indention
vnoremap < <gv
vnoremap > >gv
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


"Needed for python-mode
filetype plugin indent on
syntax on


"Set the color scheme to somethat that (hopefully) works in terminals and
"in the gui gvim
"colorscheme ron

"Makes the airline status line appear all of the time
set laststatus=2

"Turn on column highlighting for column 80 but only when the line is longer
"than 80 characters
"From OSCON 2013 talk by Damian Conway: More Instantly Better Vim
"https://www.youtube.com/watch?v=aHm36-na4-4
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)


"=====[ Highlight matches when jumping to next ]=============
" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>
highlight WhiteOnRed guibg=red
" Just highlight the match in red...
function! HLNext (blinktime)
	let [bufnum, lnum, col, off] = getpos('.')
	let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
	let target_pat = '\c\%#'.@/
	let ring = matchadd('WhiteOnRed', target_pat, 101)
	redraw
	exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
	call matchdelete(ring)
	redraw
endfunction

" Disable folding for restructuredtext files
let g:riv_disable_folding=1

" Disable autocomplete because it takes forever
let g:pymode_rope = 0

" Make navigating split windows easier and quicker
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle folding with spacebar instead of za
nnoremap <space> za
