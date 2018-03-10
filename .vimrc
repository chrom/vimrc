set autoread
set number
syntax enable
let mapleader = ','
colorschem default 
 
"----Mappings----"
nmap ,ev :tabedit ~/.vimrc<cr>


"----Auto-Commands----"
"Automaticly source the vimrc  on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"----Searching----"
set hlsearch
nmap <Leader><space> :nohlsearch<cr>
set incsearch

set t_BE=
call plug#begin('~/.vim/plugged')
	Plug 'StanAngeloff/php.vim'

        Plug 'gosukiwi/vim-atom-dark'
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	Plug 'junegunn/vim-easy-align'

	" Any valid git URL is allowed
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'

	" Multiple Plug commands can be written in a single line using | separators
	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

	" On-demand loading
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

	" Using a non-master branch
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

	" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
	" Plug 'fatih/vim-go', { 'tag': '*' }

	" Plugin options
	Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

	" Plugin outside ~/.vim/plugged with post-update hook
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }




	" Initialize plugin system
	call plug#end()


	" For NERD_tree Project
	" @see http://www.vim.org/scripts/script.php?script_id=2801
	let g:NERDTreeWinPos="left"
	let g:NERDTreeWinSize=30
	imap <F3> <Esc>:ToggleNERDTree<cr>
nmap <F3> :ToggleNERDTree<cr>



