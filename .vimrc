" Number lines
set number

" Command Completion
set wildmenu

" Smart Indentation
set smartindent
" Compile and Run / Compile / Run Commands

" For C++ Files
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.cpp :command! CR !g++ -std=c+=20 % -o %:r; !./%:r
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.cpp :command! C !g++ -std=c+=20 % -o %:r;
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.cpp :command! R !./%:r

" For C Files
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.c :command! CR !gcc % -o %:r; !./%:r
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.c :command! C !gcc % -o %:r
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.c :command! R !./%:r

" For Python Files
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.py :command! CR echo "Python files are not compilable."|R
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.py :command! C echo "Python files are not compilable."
au VimEnter,WinEnter,TabEnter,BufNewFile,BufRead *.py :command! R !python3 %

" Map CR/C/R to Keyboard
map <F5> :CR <CR>
map <F6> :C <CR>
map <F7> :R <CR>
