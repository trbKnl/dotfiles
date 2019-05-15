set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'svermeulen/vim-easyclip'
Plugin 'tpope/vim-repeat'
Plugin 'jalvesaq/Nvim-R'
Plugin 'jalvesaq/vimcmdline'
Plugin 'flazz/vim-colorschemes'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on

" Settings for plugins and usability 
" Change localLeader key:
let maplocalleader = ","

" """""""""""""""""  Nvim-R specific, vim configuration 
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

let R_term = 'urxvt'

let R_in_buffer = 0
"let R_source = '~/.vim/tmux_split.vim'


" """""""""""""""""  vimtex settings
" recommended settings according to the docs page

"let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_indent_enabled = 0
let g:vimtex_motion_matchparen = 0


" """""""""""""""""  YouCompleteMe settings
"I do not want to run YCM on the following filetypes:
let g:ycm_filetype_blacklist = {
      \ 'tex': 1
      \}
" """""""""""""""""  easyclip settings
let g:EasyClipShareYanks = 1


" """""""""""""""""  color theme settings
set background=dark
set t_Co=256
colorscheme gruvbox 
syntax enable

" """""""""""""""""  my own usabilty settings
"map W also to w
command! W :w 
command! Q :q 

" set line numbers
set number 

" navigate by display lines 
" noremap j gj 
" noremap k gk

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" Yanks directly in primary register
noremap <Leader>y "*y 
noremap <Leader>p "*p

