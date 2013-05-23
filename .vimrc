set number
set shiftwidth=4
set softtabstop=4
" Spaces instead of tabs

set expandtab
set nowrap
set noswapfile

"set block visual mode to q
:nnoremap q <c-v>
"set horizontal scroll bar
set guioptions=+b

"set vertical scroll bar
"set guioptions=+r

"sets the working directory to the same directory as the current file
autocmd BufEnter * silent! lcd %:p:h

:cd ~/projects

" Always  set auto indenting on
set smartindent

" select when using the mouse
set selectmode=mouse
syntax on
colorscheme gentooish

" set the commandheight
set cmdheight=2

" do not keep a backup files 
set nobackup
set nowritebackup
" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" show (partial) commands

set showcmd

" do incremental searches (annoying but handy);
set incsearch

" Show  tab characters. Visual Whitespace.
"set list

"set listchars=tab:>.

" Set ignorecase on
set ignorecase

" smart search (override 'ic' when pattern has uppers)

set scs

nmap <F5> :TagbarToggle<CR>

"##############################################################################                                                                         
" Easier split navigation                                                                                                                               
"##############################################################################                                                                         

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

map <C-q> :NERDTreeToggle<CR>

execute pathogen#infect()
