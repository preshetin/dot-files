set foldmethod=marker " need this to enabe folding in this vimrc file

" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on


"-------------Manual plugins start-----------"

set runtimepath+=~/.vim/bundle/nerdtree
set runtimepath+=~/.vim/bundle/ctrlp.vim
set runtimepath+=~/.vim/bundle/emmet-vim "html snippets
set runtimepath+=~/.vim/bundle/ultisnips

set runtimepath+=~/.vim/bundle/gruvbox

set runtimepath+=~/.vim/bundle/vim-javascript
set runtimepath+=~/.vim/bundle/vim-jsx

set runtimepath+=~/.vim/bundle/ale

"set runtimepath+=~/.vim/bundle/indentLine



"-------------Manual plugins end-------------"

"-----Sandbox-----"
" for vim 8
"if (has("termguicolors"))
" set termguicolors
"endif

colorscheme gruvbox
let g:gruvbox_contrast_dark="soft"
let g:gruvbox_contrast_light="soft"
let g:gruvbox_invert_selection=1
set background=dark " for the light version


"-----------------"

"--------------Ale (linting & fixing)--------{{{"
"Plugin repo: https://github.com/w0rp/ale

"I want to use standard js linting
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}

"easier auto fixing
noremap <leader>fi :ALEFix<cr>


"-----------------------------------------------}}}"
"--------------Ultisnip config-------------- " {{{

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


let g:UltiSnipsSnippetDirectories = ['~/.vim/ultisnips_snippets']

" }}}


set cursorcolumn "set vertical cursor line
set cursorline  "set horizontal cursor line

set guioptions-=L  "remove left-hand scroll bar
set guifont=Menlo\ Regular\ for\ Powerline:h12

set omnifunc=syntaxcomplete#Complete "enable omni completion

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_working_path_mode = 0


" FINDING FILES:
set path+=** " Search down into subfolders " Provides tab-completion for all file-related tasks
set wildmenu " Display all matching files when we tab complete


set tabstop=2 "number of spaces in one tab
set shiftwidth=2 "number of spaces to indent
set expandtab "spaces in tabs
set smartindent "smart indent


let mapleader = ',' "Set map leader
set hlsearch "Hilight search
set nowrap "set no wrap text


set colorcolumn=80 "set ruler (for max width line recommendation)

"-----------------Mappings----------{{{--"

"Make it easy to edit .vimrc file"
nmap <Leader>ev :e $MYVIMRC<cr>

"Add simple hilight search removal"
nmap <Leader><space> :nohlsearch<cr>

"Adjust class names for JSX
nmap <Leader>cl :%s/class=/className=/g<cr>


"Make NERDTree easier to toggle
nmap <D-1> :NERDTreeToggle<cr>

" Copying/pasting text to the system clipboard.
noremap  <leader>p "+p
vnoremap <leader>y "+y
nnoremap <leader>y VV"+y
nnoremap <leader>Y "+y


"toggle show/hide line numbers
noremap <leader>l :set invnumber<cr> 

"-----------------------------------}}}--"



