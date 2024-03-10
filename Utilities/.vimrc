" @autor: josuerom
syntax enable
set background=dark
set clipboard=unnamedplus
set smartindent
set autoindent
set tabstop=3
set shiftwidth=3
set expandtab
set number
set mouse=a
set laststatus=2

autocmd FileType cpp :call RunCpp()
autocmd FileType java :call RunJava()

" compilar. <F5>
" ejecutar con entrada por archivo. <F6>
" ejecutar con entrada manual. <shift + F6>
" para c++ >= 11
function! RunCpp()
   nmap <f5> :w<CR> :!clear && g++ -std=c++17 -DLOCAL % -o ~/workspace/bin/sol<CR>
   imap <f5> <Esc> :w<CR> :!clear && g++ -std=c++17 -DLOCAL % -o ~/workspace/bin/sol<CR>
   nmap <C-F6> :w<CR> :!clear && ~/workspace/bin/sol<CR>
   imap <C-F6> <Esc> :w<CR> :!clear && ~/workspace/bin/sol<CR>
   nmap <f6> :w<CR> :!clear && ~/workspace/bin/sol <in1
   imap <f6> <Esc> :w<CR> :!clear && ~/workspace/bin/sol <in1
   nmap <f7> :w<CR> :tabnew in1
   imap <f7> <Esc> :w<CR> :tabnew in1
   tmap <f9> ~/workspace/bin/sol<CR>
endfunction

" ejecutar con entrada manual. <shift + F6>
" ejecutar con entrada por archivo. <F6>
" para java >= 11
function! RunJava()
   nmap <C-F6> :w<CR> :!clear && java %<CR>
   imap <C-F6> <Esc> :w<CR> :!clear && java %<CR>
   nmap <f6> :w<CR> :!clear && java % <in1
   imap <f6> <Esc> :w<CR> :!clear && java % <in1
   nmap <f7> :w<CR> :tabnew in1
   imap <f7> <Esc> :w<CR> :tabnew in1
   tmap <f9> java %<CR>
endfunction

nmap <c-s> :w<CR>
imap <c-s> <Esc> :w<CR>
nmap <c-q> :wq!<CR>
imap <c-q> <Esc> :wq!<CR>

"instale xclip para copiar el contenido de todo el archivo con <Ctrl + Shift + A>
nmap <C-S-A> ggVG:w !xclip -i -selection clipboard<CR> :echo 'File all copied!'<CR>
imap <C-S-A> <Esc>:w<CR> ggVG:w !xclip -i -selection clipboard<CR> :echo 'File all copied!'<CR>

let mapleader = " "
nmap <Leader>r :source ~/.vimrc<CR>
nmap <Leader>v :edit ~/.vimrc<CR>
nmap <Leader>e :Explore<CR>
nmap <Leader>l :bnext<CR>
nmap <Leader>dl :bdelete<CR>
nmap <Leader>nf :tabnew 
nmap <Leader>t :terminal<CR>
nmap <Leader>tt 26Gi// <Esc>17G
