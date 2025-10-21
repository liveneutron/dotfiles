filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set nocompatible
set number
set relativenumber
set showcmd
set laststatus=0
syntax on
colorscheme habamax

"my functions
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Vexplore
    endif
endfunction

"filebrowser settings
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_winsize=15
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

"my keybindings
"bind ctrl+u/d with zz
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

"toggles file browser
noremap <silent> <A-f> :call ToggleNetrw()<CR>

"open new tab
noremap <A-w> :tabnew<CR>

"closes current tab
noremap <A-s> :close<CR>

"next tab
noremap <A-k> :tabnext<CR>

"previous tab
noremap <A-j> :tabprevious<CR>

"open FZf
noremap <space>f :FZF --reverse --border double --ghost=Search --input-border sharp --preview less\ {} --preview-border sharp --no-scrollbar --no-info<CR>

"html snippit
nnoremap ml :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

