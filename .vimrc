let g:lua_inspect_events = ''
map <F2> :NERDTreeToggle<CR> 
set guicursor+=a:blinkon0 " hard disable cursor blink; terminal needs to disable also
set history=100
filetype on
filetype plugin on
filetype indent on
set showmatch
set showcmd
set showmode
set number
set incsearch					"start scrolling as search terms are typed
set smartcase					"search for any case until mixed case entered
set hlsearch					"highlight search results
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>

"tab formatting
set shiftwidth=4
set tabstop=4

set ch=2 						"2-column command area
set scrolloff=4					"start scrolling 4 BufExplorer
"status line:
" file, modified?, RO?, Line info, Col info,
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\%c\ B#%n

set hidden						"It's ok to have an unsaved hidden buffer

set laststatus=2				"always show status bar

"totally boss status bar autocomplete in command mode
set wildchar=<Tab> wildmenu wildmode=full "
"set status bar as grey when command, red on insert
"makes for easy identification of mode
au VimEnter * hi StatusLine ctermfg=0 
au InsertEnter * hi StatusLine ctermfg=1 
au InsertLeave * hi StatusLine ctermfg=0 

"painful - visual mode auto-deselects when indent/dedent. fix this.
vnoremap < <gv
vnoremap > >gv

augroup FgHighlight
	autocmd!	
	au VimEnter * set cul
	au WinEnter * set cul
	au WinLeave * set nocul
augroup END

"smart exit from insert mode with jk
inoremap jk <Esc>
