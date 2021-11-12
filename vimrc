colorscheme torte
syntax on
" Tabs rulez
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
" Be lenient:
command! WQ wq
command! Wq wq
command! W w
command! Q q
" Highlight search but don't be annoying:
set hlsearch
nnoremap <C-c> :nohlsearch<return><C-c>
" No more squiggles
set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.
" Bash like tab completion
set wildmode=longest:full,full
set wildmenu
" Search while typing
set incsearch
" Scroll offset
if !&scrolloff
  set scrolloff=1
endif
" Status bar
set laststatus=2
set ruler
set showcmd
" Shortcuts for gt, rip []
nmap ] gt
nmap [ gT
" Keep block after shifting
vnoremap < <gv
vnoremap > >gv
" Always show tabs at top
set showtabline=2
" Folding
command! -nargs=1 Fold set foldmethod=syntax | set foldlevel=<args>
command! Nofold set nofoldenable
" Arrows no more:
" nnoremap <Up> <C-Y>
" nnoremap <Down> <C-E>
" nnoremap <Left> ^
" nnoremap <Right> $
" Unveil the evil that is tabs and trailing spaces (and long lines)
au FileType python,c,cpp,html match Error /\t\| \+$\|\%81v./
" Who uses q anyways
noremap q <Nop>
" Git commands
command! Gitdiff ! git diff %
command! Gitdiffw ! git diff --word-diff=color %
