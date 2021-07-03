set exrc
set nocompatible              " be iMproved, required
"required by vundle
"filetype off

call plug#begin('/root/.vim/plugged')
    Plug 'preservim/nerdtree'
    "tmux integration and navigate between open pages with C-h C-j C-k C-k
    Plug 'benmills/vimux'
    Plug 'christoomey/vim-tmux-navigator'
    "display which keybindings is available
    Plug 'liuchengxu/vim-which-key'
    Plug 'preservim/tagbar'
    Plug 'tpope/vim-dispatch'
    Plug 'morhetz/gruvbox'
    Plug 'dense-analysis/ale'
    Plug 'jiangmiao/auto-pairs'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    "nicer status bar
    Plug 'vim-airline/vim-airline'
    "Show git stuff and info at line
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'leafgarland/typescript-vim'
    Plug 'vim-utils/vim-man'
    Plug 'mbbill/undotree'
    "fuzzy find
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
    Plug 'machakann/vim-highlightedyank'
    "intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
    "plugin to facilitate navigation
    Plug 'tpope/vim-unimpaired'
    Plug 'easymotion/vim-easymotion'
    "mappings to easily delete, change and add such surroundings in {}, (), [], "", ''
    Plug 'tpope/vim-surround'
    "autoclose and actions to insert spaces or new line between {}, (), []
    Plug 'jiangmiao/auto-pairs'
    "highlight trailing whitespaces
    Plug 'ntpeters/vim-better-whitespace'

    Plug 'tpope/vim-commentary'
    "colorful pair of brackets
    Plug 'frazrepo/vim-rainbow'
    "snippets (plug and collection of snippets)
    Plug 'honza/vim-snippets'
    "Plug 'SirVer/ultisnips'

    "Startify: Fancy startup screen for vim
    Plug 'mhinz/vim-startify'

    Plug 'voldikss/vim-floaterm'

    "colorscheme
    "Plug 'dracula/vim', { 'name': 'dracula' }
    "Plug 'fmoralesc/molokayo'
    "Plug 'joshdick/onedark.vim'
    "Plug 'kyoz/purify', { 'rtp': 'vim' }
    "Plug 'kaicataldo/material.vim'
    "Plug 'KeitaNakamura/neodark.vim'
    Plug 'morhetz/gruvbox'

    "devicons (should be loaded after the current plugs)
    Plug 'ryanoasis/vim-devicons'
call plug#end()

syntax on
set shell=zsh
let mapleader = ' '
set termguicolors
set guicursor=

"set shortmess=atI
"set fillchars=vert:\

"set history=1000                " Store lots of :cmdline history
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set nowritebackup
set noerrorbells                " No beeps
set cursorline                  " Highlight the current line
set cursorcolumn                " Highlight the current column
set clipboard+=unnamed          " Shared clipboard
set mouse=a                     " enable mouse if possible
set ls=2                        " always show status bar

set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set linespace=0                 " How to change the space between lines in vim?
set updatetime=50
set switchbuf=usetab,usetab     " Open new buffers always in new tabs
set wildignore+=*/.git/*,       " Linux/MacOSX
            \*/.hg/*,*/.svn/*,
            \*/cscope*,*/*.csv/,
            \*/*.log,*tags*,*/bin/*

set showcmd                     " Show me what I'm typing
set noshowmode                  " airline will do the job
set numberwidth=4               " Number width
set number relativenumber       " show relative number of lines to the current line
set showmatch                   " show matching brackets/parentthesis
"set completeopt-=preview        " Don't show preview window

set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
nnoremap <silent> <Leader><Esc> :nohl<CR>

" Code folding settings (use `zc`, `zo`, `zz`)
set nofoldenable                                             " don't fold by default
set foldmethod=marker
set foldmarker={,}
set foldlevel=1
set foldlevelstart=99
set foldnestmax=10                                           " deepest fold is 10 levels

set shiftwidth=4                " Default indent settings
set softtabstop=4               " 
set expandtab!                  " Use spaces instead of tabs
set lazyredraw                  " don't redraw while executing macros
set autoindent                  " Automatic indent
set smartindent                 " Smart indent

set encoding=utf-8              " Set default encoding to UTF-8
"set fileencodings=utf-8,ucs-bom,gbk,gb2312,gb18030,default
"set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
"set formatoptions+=tcroqw       " 
" Autocomplete menu
set completeopt=menuone,longest,preview                      " simple autocomplete for anything
set previewheight=5                                          " preview window height for viewing documentation
set wildmenu
set wildmode=list:longest,full                               " autocomplete for paths and files
" set wildoptions=pum,tagfile                                  " display popup
" set pumblend=0                                             " transparence
" ignore these extensions on autocomplete
set wildignore+=*swp,*.class,*.pyc,*.png,*.jpg,*.gif,*.zip,.git
set wildignore+=*/tmp/*,*.o,*.obj,*.so

set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2                " Always show the status line. or 1

"set guioptions=''
set t_Co=256           "explicitly tell vim the terminal support 256

"set guifont=Source\ Code\ Pro\ Light:h13
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
set background=dark           " Background color
colorscheme gruvbox
"colorscheme molokai
" colorscheme solarized
" colorscheme desert


" a buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

set belloff=all
set tabstop=4 

set nowrap
set undodir=/root/.vim/undodir
set undofile
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

set cmdheight=1

" popup colors
hi Pmenu      ctermfg=223 ctermbg=239 guifg=#ebdbb2 guibg=#504945
hi PmenuSel   cterm=bold ctermfg=239 ctermbg=109 gui=bold guifg=#504945 guibg=#83a598
hi PmenuThumb ctermbg=243 guibg=#7c6f64

let g:ale_cpp_cc_options = '-std=c++20 -Wall -Wextra -Wsign-conversion'
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
"" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)
