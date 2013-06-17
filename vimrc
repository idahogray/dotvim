call pathogen#incubate()
call pathogen#helptags()

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
