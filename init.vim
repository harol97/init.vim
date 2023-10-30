call plug#begin("~/.local/share/nvim/plugged")
Plug 'jremmen/vim-ripgrep'
Plug 'rktjmp/lush.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'rktjmp/lush.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'https://github.com/ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'olimorris/onedarkpro.nvim'

call plug#end()

autocmd BufWritePre * :silent call CocAction('runCommand', 'editor.action.organizeImport')
" command! -nargs=0 OR   :silent call CocAction('runCommand', 'editor.action.organizeImport') averiguar para que sirve

syntax on

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" terminal

nmap <C-j> <Plug>(coc-terminal-toggle)<CR>
imap <C-j> <Plug>(coc-terminal-toggle)<CR>


" multicursor
nmap <C-c> <Cmd>\\\<CR>

nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
nmap <leader>x  <Plug>(coc-cursors-operator)


"reload nvim
imap <F9> <C-O>:source $MYVIMRC<CR>
nmap <F9> :source $MYVIMRC<CR>

" autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

" coc configuration
" go to definition
nmap <silent> gd <Plug>(coc-definition)


" explorer
nmap <c-b> <Cmd>CocCommand explorer<CR>
imap <c-b> <C-O>:CocCommand explorer <Enter><C-O>

" airline
let g:airline_theme='wombat'

" docstring
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction)


" solo cuando veo que no siguen el estandar
" let g:python_recommended_style=0

" config nvim
filetype plugin indent on
set number
set showcmd
set mouse=a
set clipboard=unnamedplus
set encoding=UTF-8
imap <Home> <C-O>^
nmap <Home> ^
set sw=2
set expandtab
set nowrap
autocmd FileType javascript setlocal sw=2 expandtab
autocmd FileType java setlocal sw=2 expandtab
autocmd FileType javascriptreact setlocal sw=2 expandtab
autocmd FileType typescript setlocal sw=2 expandtab
autocmd FileType typescriptreact setlocal sw=2 expandtab
autocmd FileType html setlocal sw=2 expandtab
autocmd FileType htmldjango setlocal sw=4 expandtab
autocmd FileType scss setlocal sw=2 expandtab
autocmd FileType css setlocal sw=2 expandtab
" sudo apt-get install xclip

imap <C-s> <C-O>:w<CR>
nmap <C-s> :w<CR>
imap <C-r> <C-O>:u<CR>
nmap <C-r> :u<CR>
imap <C-w> <C-O>:q<CR>
nmap <C-w> :q<CR>
imap <C-x> <C-O>:qa<CR>
nmap <C-x> :qa<CR>
imap <C-y> <C-O>:redo<CR>
nmap <C-y> :redo<CR>
imap <C-f> <C-O>:sp<CR>
nmap <C-f> :sp<CR>
imap <C-g> <C-O>:vsp<CR>
nmap <C-g> :vsp<CR>
imap <Tab> <C-t>
imap <S-Tab> <C-d>
nmap <Tab> >>
nmap <S-Tab> <<

" themes
set termguicolors
set background=dark
" colorscheme darcula-solid
" colorscheme gruvbox
colorscheme onedark



" tmux-navigator
let g:tmux_navigator_no_mappings = 1
imap <c-left> <C-O>:TmuxNavigateLeft<cr>
nmap <c-left> :TmuxNavigateLeft<cr>
imap <c-down> <C-O>:TmuxNavigateDown<cr>
nmap <c-down> :TmuxNavigateDown<cr>
imap <c-up>  <C-O>:TmuxNavigateUp<cr>
nmap <c-up> :TmuxNavigateUp<cr>
imap <c-right>  <C-O>:TmuxNavigateRight<cr>
nmap <c-right> :TmuxNavigateRight<cr>

" coc-python (for python2)
" coc-pyright (for python3)
" coc-pairs
" coc-explorer
" coc-html
" coc-tsserver
" coc-css
" coc-prettier
" coc-markdown-preview-enhanced
" coc-pydocstring
" coc-java
" coc-json
" coc-eslint
" nerd font -> FantasqueSansMono Nerd Font Mono
" to see images red https://github.com/nvim-telescope/telescope-media-files.nvim
" git graph https://github.com/rbong/vim-flog
"  to see images need rp and maybe chafa


