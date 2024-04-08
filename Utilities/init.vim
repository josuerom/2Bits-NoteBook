"*-------------- Configuración general 08/Abril/2024 16:38 COL --------------*

"                        ██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"                        ██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"                        ██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"                        ██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"                        ██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"                        ╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"                                      Creado por >> josuerom
"                             Twitter >> https://twitter.com/josueromr

" ---- LO QUE NECESITA INSTALAR PARA EL CORRECTO FUNCIONAMIENTO ----
" INSTALL: python3 g++ java nodejs npm xclip nerd-font
" EXECUTE IN SHELL: sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"                   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" EXECUTE IN NVIM: :PlugInstall

syntax enable
set number
set mouse=a
set numberwidth=1
set relativenumber
set clipboard=unnamedplus
set background=dark
set ruler
set tabstop=3
set shiftwidth=3
set expandtab
set smartindent
set autoindent
set showmatch
set showcmd
set noshowmode
set laststatus=2
set hlsearch
set ignorecase
set smartcase
set splitbelow
set splitright
set hidden
set cmdheight=1
set updatetime=50
set shortmess+=c

autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType java :call RunJava()
autocmd FileType cpp :call RunCpp()
autocmd FileType python :call RunPython()

"██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝  ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

call plug#begin('~/.config/nvim/plugged')

  Plug 'sheerun/vim-polyglot'
  Plug 'morhetz/gruvbox'
  Plug 'navarasu/onedark.nvim'
  Plug 'tanvirtin/monokai.nvim'
  Plug 'itchyny/lightline.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons' "Nerd Font in terminal
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'terryma/vim-multiple-cursors'
  Plug 'preservim/nerdcommenter'
  Plug 'jiangmiao/auto-pairs'

call plug#end()

" ajuste del tema
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
"colorscheme onedark
"colorscheme monokai

"██████╗ ██╗     ██╗   ██╗ ██████╗        ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗   ██╗   ██╗██╗███╗   ███╗
"██╔══██╗██║     ██║   ██║██╔════╝       ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝   ██║   ██║██║████╗ ████║
"██████╔╝██║     ██║   ██║██║  ███╗█████╗██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗  ██║   ██║██║██╔████╔██║
"██╔═══╝ ██║     ██║   ██║██║   ██║╚════╝██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"██║     ███████╗╚██████╔╝╚██████╔╝      ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝        ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" configuración de la barra de estado inferior
let g:lightline = {
    \ 'active': {
    \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
    \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
    \ },
    \ 'inactive': {
    \   'left': [['inactive'], ['relativepath']],
    \   'right': [['bufnum']]
    \ },
    \ 'component': {
    \   'bufnum': '%n',
    \   'inactive': 'inactive'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'kitestatus': 'kite#statusline'
    \ },
    \ 'colorscheme': 'gruvbox',
    \ 'subseparator': {
    \   'left': '',
    \   'right': ''
    \ }
    \}

let g:coc_global_extensions = [ 'coc-snippets' ]

" configuración de coc-snippets
let g:coc_snippets_next = '<c-j>'
let g:coc_snippets_prev = '<c-k>'
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <Leader>cs <Plug>(coc-convert-snippet)

" cerrado automatico de la barra lateral o tree
let NERDTreeWinPos='right'
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1

" navegación rápida tmux
let g:tmux_navigator_no_mappings=1

"*---------------------- FUNCIÓN PARA INTEGRAR LA SHELL BASH O ZSH -------------------------*
function! OpenTerminal()
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " cerrar terminal existente
    execute "q"
  else
    " se abrirá la shell zsh, pero si usted utilizas otra, debes poner el nombre
    " de la shell en la línea 194, ya sea: 'zsh, bash, fish', quedando la así:
    " execute 'sp term://zsh'
    execute "sp term://bash"
    " apagar números
    execute "set nonu"
    execute "set nornu"

    " alternar insertar en entrar o salir
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " establezco atajos dentro de la terminal
    execute "tnoremap <buffer> <Esc> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-7> <C-\\><C-\\><C-n>"
    startinsert!
  endif
endfunction

"░█████╗░░█████╗░███╗░░░███╗██████╗░██╗██╗░░░░░███████╗██████╗░░░░██╗░░░██╗██╗███╗░░░███╗
"██╔══██╗██╔══██╗████╗░████║██╔══██╗██║██║░░░░░██╔════╝██╔══██╗░░░██║░░░██║██║████╗░████║
"██║░░╚═╝██║░░██║██╔████╔██║██████╔╝██║██║░░░░░█████╗░░██████╔╝░░░╚██╗░██╔╝██║██╔████╔██║
"██║░░██╗██║░░██║██║╚██╔╝██║██╔═══╝░██║██║░░░░░██╔══╝░░██╔══██╗░░░░╚████╔╝░██║██║╚██╔╝██║
"╚█████╔╝╚█████╔╝██║░╚═╝░██║██║░░░░░██║███████╗███████╗██║░░██║██╗░░╚██╔╝░░██║██║░╚═╝░██║
"░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝

function! CompileJava()
    let l:filename = expand('%:t')
    let l:compile_command = 'javac -d ~/Workspace/bin ' . l:filename
    let l:error_output = system(l:compile_command . ' 2>&1')
    if v:shell_error
        echo "OJO:"
        echo l:error_output
    else
        echo "Compilación exitosa :)"
    endif
endfunction

function! CompileCpp()
    let l:filename = expand('%:t')
    let l:compile_command = 'g++ ' . l:filename . ' -o ~/Workspace/bin/sol.out -std=c++17 -O2 -DLOCAL'
    let l:error_output = system(l:compile_command . ' 2>&1')
    if v:shell_error
        echo "OJO:"
        echo l:error_output
    else
        echo "Compilación exitosa :)"
    endif
endfunction

function! RunJava()
    imap <silent><F5> <Esc> :w<CR> :cd %:h<CR> :call CompileJava()<CR>
    nmap <silent><F5> :w<CR> :cd %:h<CR> :call CompileJava()<CR>
    imap <F6> <Esc> :w<CR> :!java -cp ~/Workspace/bin %:r < in1
    nmap <F6> :w<CR> :!java -cp ~/Workspace/bin %:r < in1
    imap <C-r> <Esc> :w<CR> :vertical term java %<CR>i
    nmap <C-r> :w<CR> :vertical term java %<CR>i
    imap <F7> <Esc> :w<CR> :terminal<CR>java i
    nmap <F7> :w<CR> :terminal<CR>java i
endfunction

function! RunCpp()
    imap <silent><F5> <Esc> :w<CR> :cd %:h<CR> :call CompileCpp()<CR>
    nmap <silent><F5> :w<CR> :cd %:h<CR> :call CompileCpp()<CR>
    imap <F6> <Esc> :w<CR> :!~/Workspace/bin/sol.out % < in1
    nmap <F6> :w<CR> :!~/Workspace/bin/sol.out % < in1
    imap <C-r> <Esc> :w<CR> :vertical term ~/Workspace/bin/sol.out<CR>i
    nmap <C-r> :w<CR> :vertical term ~/Workspace/bin/sol.out<CR>i
    imap <F7> <Esc> :w<CR> :terminal<CR>~/Workspace/bin/sol.outi
    nmap <F7> :w<CR> :terminal<CR>~/Workspace/bin/sol.outi
endfunction

function! RunPython()
    imap <F6> <Esc> :w<CR> :!python3 -O -q % < in1
    nmap <F6> :w<CR> :!python3 -O -q % < in1
    imap <C-r> <Esc> :w<CR> :vertical term python3 -O -q %<CR>i
    nmap <C-r> :w<CR> :vertical term python3 -O -q %<CR>i
    imap <F7> <Esc> :w<CR> :terminal<CR>python3 -O -q i
    nmap <F7> :w<CR> :terminal<CR>python3 -O -q i
endfunction

"███████╗██╗  ██╗ ██████╗ ██████╗ ████████╗ ██████╗██╗   ██╗████████╗███████╗  ██╗   ██╗██╗███╗   ███╗
"██╔════╝██║  ██║██╔═══██╗██╔══██╗╚══██╔══╝██╔════╝██║   ██║╚══██╔══╝██╔════╝  ██║   ██║██║████╗ ████║
"███████╗███████║██║   ██║██████╔╝   ██║   ██║     ██║   ██║   ██║   ███████╗  ██║   ██║██║██╔████╔██║
"╚════██║██╔══██║██║   ██║██╔══██╗   ██║   ██║     ██║   ██║   ██║   ╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
"███████║██║  ██║╚██████╔╝██║  ██║   ██║   ╚██████╗╚██████╔╝   ██║   ███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
"╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

let mapleader = " "

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

imap <C-c> <Esc>
imap ññ <Esc>

nnoremap <C-k> 50 <C-e>
nnoremap <C-j> 50 <C-y>

nnoremap > 5<C-w>>
nnoremap < 5<C-w><

nnoremap <Leader>, $a;<Esc>

nmap <Leader>t :call OpenTerminal()<CR> <Esc> :resize 14<CR>
nmap <Leader>¿ :e ~/.config/nvim/init.vim<CR>

" editar archivos de entrada: agrege el ID y presione Enter
imap <F8> <Esc> :w<CR> :e in
nmap <F8> :w<CR> :e in

nmap <F2> :w<CR> :so ~/.config/nvim/init.vim<CR>
imap <F2> <Esc> :w<CR> :so ~/.config/nvim/init.vim<CR>
nmap <F3> kp :let @*=expand("%")<CR>
imap <F3> <Esc> :w<CR> kp :let @*=expand("%")<CR>

imap <C-a> <Esc> :w<CR> :%y+<CR>
nmap <C-a> :w<CR> :%y+<CR>

nmap <Leader>w :w!<CR>
nmap <C-s> :w!<CR>
imap <C-s> <Esc> :w!<CR>

nmap <C-q> :q<CR>
nmap <Leader>q :q<CR>
imap <C-q> <Esc> :q<CR>
nmap <C-x> :qa!<CR>
nmap <Leader>x :qa!<CR>
imap <C-x> <Esc> :qa!<CR>

nmap <Leader>e :NERDTreeToggle<CR>
nmap <Leader>p :Explore<CR>
nmap <Leader>nf :tabnew

vmap }} <plug>NERDCommenterToggle
nmap }} <plug>NERDCommenterToggle
imap }} <Esc> <plug>NERDCommenterToggle <Esc>i

nnoremap <silent><C-h> :TmuxNavigateLeft<CR>
nnoremap <silent><C-j> :TmuxNavigateDown<CR>
nnoremap <silent><C-k> :TmuxNavigateUp<CR>
nnoremap <silent><C-l> :TmuxNavigateRight<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <Leader>ii :vsp<CR>

nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>dl :bdelete<CR>

nmap <Leader>s <Plug>(easymotion-s2)

nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>pc :PlugClean<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pp :PlugUpgrade<CR>

vnoremap < <gv
vnoremap > >gv

" para multiples cursores debe poner el cursor encima de una palabra y presionar
" <ctrl+n> para buscar las coincidencias en el archivo y luego presione <c>
" para editar el contenido seleccionado

" para agrupar una cadena de texto con cualquier simbolo ya sea: () [] {} '' ""
" debes selecionar la palabra hasta un carácter antes y presionar: <s+el-simbolo-a-usar>
" por ejemplo: <s+[>
xmap s <Plug>VSurround

" mover bloques de código seleccionado en modo VISUAL, V-LINE o V-BLOCK con <K> subes el código y con <J> lo bajas
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" cambia la posición de una línea
nnoremap n :m .-2<CR>==
nnoremap m :m .+1<CR>==

nnoremap <silent><nowait> <F12> :<C-u>CocList snippets<CR>
nnoremap <silent><nowait> <Leader>cup :<C-u>CocUpdate<CR>

" Para camiar el carácter que contenga una cadena de texto o cambiar el carácteres que los contiene,
" por ejemplo: si tienes un: 'Hi! World' al presionar <cs+el-simbolo-a-usar> la cadena de carácteres
" que los agrupa magicamente se cambiaran sin necesidad de realizarlo manualmente
