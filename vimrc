call pathogen#incubate()
call pathogen#helptags()

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
