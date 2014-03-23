call pathogen#infect()
set nocompatible
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set guioptions+=b
set nowrap

set number
"lets you hide  buffer so you can switch without saving it
set hidden
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

let mapleader = ","

"colorscheme gentooish

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set runtimepath+=$HOME/.vim/taglist.vim/plugin

"gives a buffer list
:nnoremap <leader>b :buffers<CR>:buffer<Space>

"adds closing parens
"":inoremap ( ()<Esc>i
"":inoremap " ""<Esc>i
"":inoremap { {}<Esc>i
"":inoremap [ []<Esc>i

"adds lisp ctags
let tlist_clojure_settings = 'lisp;f:function'


map <C-n> :NERDTreeToggle<CR>
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>
map <space> :tabnew<CR>
:nnoremap q <c-v>
"let NERDTreeQuitOnOpen = 1

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
let Tlist_Use_Right_Window = 1
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags=tags;/

map <leader>l :TlistToggle<cr>



" Use ctrl-[hjkl] to select the active split!
"nmap <silent> <C-k> :wincmd k<CR>                                                                                                                       
"nmap <silent> <C-j> :wincmd j<CR>                                                                                                                       
"nmap <silent> <C-h> :wincmd h<CR>                                                                                                                       
"nmap <silent> <C-l> :wincmd l<CR>

" do not keep a backup files 
set nobackup
set nowritebackup

"sets the working directory to the same directory as the current file
autocmd BufEnter * silent! lcd %:p:h

"select buffers from a list
"function! BufSel(pattern)
"     let bufcount = bufnr("$")
"     let currbufnr = 1
"     let nummatches = 0
"     let firstmatchingbufnr = 0
"     while currbufnr <= bufcount
"       if(bufexists(currbufnr))
"         let currbufname = bufname(currbufnr)
"          if(match(currbufname, a:pattern) > -1)
"           echo currbufnr . ": ". bufname(currbufnr)
"            let nummatches += 1
"             let firstmatchingbufnr = currbufnr
"              endif
"               endif
"                let currbufnr = currbufnr + 1
"                  endwhile
"                    if(nummatches == 1)
"                     execute ":buffer ". firstmatchingbufnr
"                       elseif(nummatches > 1)
"                        let desiredbufnr = input("Enter buffer number: ")
"                         if(strlen(desiredbufnr) != 0)
"                           execute ":buffer ". desiredbufnr
"                            endif
"                              else
"                                      echo "No matching buffers"
"                                        endif
"                                    endfunction
"
"command! -nargs=1 Bs :call BufSel("<args>")
