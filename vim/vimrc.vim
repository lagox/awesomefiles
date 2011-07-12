"""
""" Look and feel
"""

""" Look

" Font
set guifont=M+\ 1m:h12

" Colorscheme
" ?

" Hide toolbar
set guioptions-=T
set guioptions-=L

" Remove scroll bars
set guioptions-=l
set guioptions-=R
set guioptions-=r

" Show numbers
set number

""" Feel

" Don't wrap long lines
set nowrap

" Count of spaces for tab 
set tabstop=2
" Count of spaces for retab
set shiftwidth=2
" Insert spaces on tab
set expandtab

"""
""" Shortcuts
"""

nmap <D-y> :vsplit <cr>
nmap <D-S-y> :split <cr>

"""
""" System
"""

" Specify tmp dir
set directory=~/.vim/tmp

" Disable swap
set noswapfile
