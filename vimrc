""
"" Basic Setup
""

let mapleader = " " " Map leader to a single blank space

syntax enable      " Turn on syntax highlighting

set nocompatible   " Use Vim settings, rather then Vi settings
set number         " Show line numbers
set numberwidth=5  " Width of line number gutter
set ruler          " Show the cursor position all the time
set encoding=utf-8 " Set default encoding to UTF-8
set laststatus=2   " Always display the status line
set history=50     " How many lines of history to remember
set showcmd        " Display incomplete commands
set autowrite      " Automatically :write before running commands
set nofoldenable   " Disable folding

" Hide all those annoying tildes everywhere
hi clear NonText 
hi link NonText Ignore 
au ColorScheme * hi clear NonText | hi link NonText Ignore

""
"" Clipboard
""

set clipboard=unnamed " Use the unnamed clipboard

""
"" Whitespace
""

set tabstop=2      " A tab is 2 spaces
set shiftwidth=2   " An autoindent is 2 spaces
set expandtab      " Use spaces, not tabs
set backspace=2    " Backspace deletes like most programs in insert mode
set list listchars=tab:»·,trail:· " Display extra whitespace
set fillchars+=vert:\             " Remove vertical separator character

""
"" Backup and Swap Files
""

set nobackup       " No backup files
set nowritebackup  " Don't backup file while editing
set noswapfile     " No swap files

""
"" Search
""

set hlsearch      " Highlight matches when searching
set incsearch     " Use incremental search
set ignorecase    " Ignore case when searching
set smartcase     " Case-sensitive when string has capital letters

""
"" Split Panes
""

set splitbelow " Open new horizontal splits on the bottom
set splitright " Open new vertical splits to the right

""
"" Misc.
""

let g:html_indent_tags = 'li\|p' " Treat <li> and <p> tags like the block tags they are
au BufNewFile,BufRead *.json.jbuilder set ft=ruby " add jbuilder syntax highlighting
highlight link xmlEndTag xmlTag

""
"" Plugin variables
""

" Ctrl-P
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Neocomplcache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3

" NERDTree
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeIgnore = ['node_modules$', 'tags$', 'pyc$', '__pycache__$']
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeWinSize = 40
let g:loaded_netrw = 1
let g:loaded_netrwPlugin  = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " close NERDTree if it's the only window open

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = []

" Bling
let g:bling_count = 2
let g:bling_time = 100

" vim-jsx
let g:jsx_ext_required = 0

""
"" Plugins
""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

source ~/.vimrc.bundles

" Source the local bundles if they exist
if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""
"" Color Scheme
""

colorscheme sunburst

""
"" Auto-Commands
""

augroup vimrcEx
  autocmd!

  autocmd VimEnter *
    \ if isdirectory(expand("<amatch>")) |
    \   exe "cd " . fnameescape(expand("<amatch>")) |
    \   NERDTree |
    \ endif

  autocmd BufWritePost vimrc source ~/.vimrc
  autocmd BufWritePost vimrc.bundles source ~/.vimrc | BundleInstall

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufNewFile,BufRead *.md set filetype=markdown
  autocmd BufNewFile,BufRead *.scss set filetype=scss
  autocmd BufNewFile,BufRead *.jsx set syntax=javascript.jsx
  autocmd BufRead,BufNewFile *.rabl setf ruby

  " Enable spellchecking for Markdown
  autocmd BufRead,BufNewFile *.md setlocal spell

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80

  " Autoformat elixir
  autocmd BufWrite *.ex,*.exs :Autoformat
augroup END

""
"" Key bindings / mappings
""

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Force NerdTree to open with tab support
nnoremap <leader>n :NERDTreeToggle .<CR>

" Open tagbar with <C-c>
nnoremap <C-c> :TagbarToggle<CR>

" Source the local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
