colorscheme desert
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
" Shortcuts for gt, rip {}
nmap } gt
nmap { gT
" Fancy update
command! Updatevimrc execute "! wget https://raw.githubusercontent.com/abeakkas/defaults/master/.vimrc -O ~/.vimrc" | so ~/.vimrc
