set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'godlygeek/tabular'									" Tabulate headers
Plugin 'jiangmiao/auto-pairs'								" Auto pair brackets and etc...
Plugin 'junegunn/goyo.vim' 									" Distraction-free writing in vim
Plugin 'mattn/emmet-vim' 										" Emmet syntax
Plugin 'plasticboy/vim-markdown'						" Syntax on markdown code fence
Plugin 'preservim/nerdtree' 								" Nerdtree navigation
Plugin 'tpope/vim-fugitive'
Plugin 'yuttie/comfortable-motion.vim'			" Smooth scrolling
Plugin 'matchit.zip'												" Search matching characters and code
Plugin 'luochen1990/rainbow'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'									" Surround words with special characters easily
call vundle#end()            " required
filetype plugin indent on    " required
" 
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" ------------------------------
" --- AUTOCOMPLETION --
" ------------------------------
"  <C-n> To autocomplete words based on words existing in all open files
"
filetype plugin on
set omnifunc=syntaxcomplete#Complete			" CSS autocompletion
set omnifunc=htmlcomplete#CompleteTags		" HTML autocompletion
"
" ------------------------------
"" --- REMAPS --- 
" ------------------------------
" Overview of which map command works in which mode.  More details below.
"      COMMANDS                    MODES ~
"      :map   :noremap  :unmap     Normal, Visual, Select, Operator-pending
"      :nmap  :nnoremap :nunmap    Normal
"      :vmap  :vnoremap :vunmap    Visual and Select
"      :smap  :snoremap :sunmap    Select
"      :xmap  :xnoremap :xunmap    Visual
"      :omap  :onoremap :ounmap    Operator-pending
"      :map!  :noremap! :unmap!    Insert and Command-line
"      :imap  :inoremap :iunmap    Insert
"      :lmap  :lnoremap :lunmap    Insert, Command-line, Lang-Arg
"      :cmap  :cnoremap :cunmap    Command-line
"
" To disable the Ctrl+e binding to nothing
inoremap <C-e> <Nop>
" To disable the Shift + F2 binding to do nothing
nnoremap Q <Nop>
" Remap t+y to open the todo list
nnoremap ty :vs ../../Dropbox/anteckningsbok/todo/toDo.md<CR>
" Remap NERDTree Toggle to Ctrl + t
nnoremap <C-t> :NERDTreeToggle<CR>
" Toggle :set wrap with "Tab"
nnoremap <Tab> :set wrap!<CR>
" Remap tabs activate with "t"
nnoremap tn :tabnew<Space> 
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
" To toggle relative number mode with "rrn"
nnoremap rrn :set relativenumber!<CR>
" Remap ` to turn off highlight search
nnoremap ` :noh<CR>
" Remap the arrow keys to resize the pane splits
nnoremap <Up>				:resize +6<CR>
nnoremap <Down>			:resize -6<CR>
nnoremap <Left>			:vertical resize +6<CR>
nnoremap <Right>		:vertical resize -6<CR>
" Remamp the autocompletion function to Ctrl + p (Insert Mode Only)
imap <C-p> <C-x><C-o>
" To insert the current date using Ctrl + d
imap <C-d> <C-r>=strftime('%F')<CR>
" To start a new journal/idea
map == <S-Tab><S-a><C-d><Esc>jja<Space>
" Remap "switch pane navigation" on vim
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Toggle Rainbow Parenthesis with Shift-U
map <S-u> :RainbowToggle<CR>
" Toggle Goyo with Shift+Tab
map <S-Tab> :Goyo<CR>
" Search
map <C-p> :Files<CR>
"
" ------------------------------
" --- LET ---
" ------------------------------
" Let J & K utilise the smooth scrolling
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
" Set "," to be the leader key for Emmet.
let g:user_emmet_leader_key=','
" Let g:vim_markdown_auto_insert_bullets = 0 			" To remove the auto bullet point in plasticboy's plugin
let g:vim_markdown_new_list_item_indent = 0 			" To remove the auto-indent in plasticboy's plugin
let g:rainbow_active = 0 
"
" ------------------------------
" --- OTHER ---
" ------------------------------
set hlsearch						" To highlight words during the search
set incsearch						" Incremental search feature
set ignorecase					" Searches all words no matter of case
set nofoldenable				" To set the default to not tabulate the headers
set noswapfile
set relativenumber			" To turn on relative numbers by default
set number							" To turn on numbers the side
set splitbelow 					" Make vim window split natural
set splitright					" Make vim window split natural 
set tabstop=2						" To set the tab space by 2 rather than the defuault 4
set nowrap
set autochdir						" Automatically change working directory to the current file
set autoread
syntax on
"
" ------------------------------
" --- GOYO ---
" ------------------------------
" Ensures :q to quit even when Goyo is active & word wrap is active
function! s:goyo_enter()
				set wrap
				let b:quitting = 0
				let b:quitting_bang = 0
				autocmd QuitPre <buffer> let b:quitting = 1
				cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
				set nowrap
				if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
				if b:quitting_bang
				qa!
				else
				qa
				endif
				endif
endfunction

       autocmd! User GoyoEnter call <SID>goyo_enter()
	     autocmd! User GoyoLeave call <SID>goyo_leave()
