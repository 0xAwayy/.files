set number
set nocompatible
set completeopt-=preview
set shiftwidth=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-x> :NERDTreeClose<CR>
nnoremap <C-q> :wq<CR>
filetype on
syntax on
set encoding=utf-8
set cindent
filetype indent on
let g:deoplete#enable_at_startup = 1
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'thedenisnikulin/vim-cyberpunk'
Plugin 'VundleVim/Vundle.vim'
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'scrooloose/nerdtree'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'epheien/termdbg'
Plugin 'weirongxu/coc-explorer'
Plugin 'shirk/vim-gas'
Plugin 'vimsence/vimsence'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'lamu-ai/lamu.vim'
Plugin 'fehawen/sc.vim'
Plugin 'lervag/vimtex'
call vundle#end()

set background=dark
colorscheme vim-monokai-tasty

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction
