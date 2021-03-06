"general configurations
set nocompatible              " required
filetype off                  " required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'dracula/vim'
" Plugin 'joshdick/onedark.vim'
Plugin 'bratpeki/truedark-vim'
Plugin 'savq/melange'


Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'airblade/vim-gitgutter'
Plugin 'yggdroot/indentline'
Plugin 'raimondi/delimitmate'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-commentary'
Plugin 'xuyuanp/nerdtree-git-plugin'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-unimpaired'
Plugin 'neoclide/coc.nvim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tweekmonster/django-plus.vim'
Plugin 'fisadev/vim-isort'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'psf/black'
Plugin 'pineapplegiant/spaceduck'
Plugin 'tomasiser/vim-code-dark'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'mitermayer/vim-prettier'
Plugin 'pangloss/vim-javascript'
Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'

" playing with vim
Plugin 'senran101604/neotrix.vim'


call vundle#end()            " required
filetype plugin indent on    " required


" Configuration: General
filetype plugin indent on    " required
set number
set relativenumber

syntax enable
syntax on
set encoding=utf-8
set incsearch
set hlsearch

set path+=** "Find file in nested folder
set wildmenu
set laststatus=2
set mouse=a "enable mouse"
set title

set expandtab "convert tab to spaces"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=79,119

"swap and backup file options
set noswapfile
set nobackup
set nowb
set nowrap "Dont wrap lines
set linebreak

set foldenable "Enable folding
set foldlevelstart=10 "Open most of the folds by default. If set to 0, all folds will be closed.
set foldnestmax=10 "Folds can be nested. Setting a max value protects you from too many folds.

set hidden " helps to edit multiple buffers without saving
set confirm "Display an confirmation dialog when closing a unsaved file
set undofile


" Configuration: Custom
let mapleader = ","
nnoremap \ ,
nnoremap <silent> <leader>, :nohlsearch<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
" nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
" imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

set directory=$HOME/.vim/swp//
set backupdir=~/.vim/.backup//

"Enable persistent undo so that undo history persists across vim sessions
set undodir=~/.vim/undodir

"Enter to go to EOF and backspace to go to start
nnoremap <CR> G
nnoremap <BS> gg
" inoremap <BS> <c-w>

" copy and pasting from system clipboard
set clipboard=unnamed
inoremap <C-v> <ESC>"+p<ESC>
vnoremap <C-c> "+y
vnoremap <C-d> "+d

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Highlight trailing whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
""remove trailing whitespace automatically
autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

"Move visual selection
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap . :normal.<CR>

" Disable arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
""" configuration for full stack developemnt
au BufNewFile,BufRead *.js,*.html,*.css
    \ set expandtab |
    \ set tabstop=2 |
    \ set shiftwidth=2 |
    \ set softtabstop=2 |
    \ set colorcolumn=90 |

" python PEP 8 indentation
" au BufNewFile,BufRead *.py
"     \ set tabstop=4 |
"     \ set softtabstop=4 |
"     \ set shiftwidth=4 |
"     \ set textwidth=79 |
"     \ set expandtab |
"     \ set fileformat=unix |
"     \ set colorcolumn=79 |
set cursorline

" Shortcuts for moving between tabs.
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>
"Look for a tags file recursively in parent directories
set tags=tags;

nnoremap <leader>z zfip
vnoremap <leader>z zf
nnoremap <Space> za

"Jump back to last edited buffer
nnoremap <C-b> <C-^>
inoremap <C-b> <Esc><C-^>
"nnoremap <F3> :source $HOME/.vimrc<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
"Delete inside next parentheses
onoremap in( :<c-u>normal! f(vi(<cr>
"Delete inside last parentheses
onoremap il( :<c-u>normal! F)vi(<cr>
inoremap <c-u> <esc>bgUiwea

"" snippet reading mapping
"" autocmd BufNewFile base.html 0r ~/.vim/templates/base.html
"" nnoremap ,im :-1read ~/.vim/templates/hacker<CR>
"" nnoremap ,html :-1read ~/.vim/templates/base.html<CR>
"" nnoremap ,scm :-1read ~/.vim/templates/scm<CR>
"" nnoremap ,ecm :-1read ~/.vim/templates/ecm<CR>
"nnoremap <leader>1 :-1read ~/.vim/templates/scm<CR>
"nnoremap <leader>2 :read ~/.vim/templates/ecm<CR>

augroup AutoSaveFolds
    autocmd!
    " view files are about 500 bytes
    " bufleave but not bufwinleave captures closing 2nd tab
    " nested is needed by bufwrite* (if triggered via other autocmd)
    autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
    autocmd BufWinEnter ?* silent! loadview
augroup end

"cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!


" Configuration: Plugin gruvbox
colorscheme onedark


" Configuration: Plugin nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Configuration: Plugin fzf.vim
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>

" fzf File Finder
nmap <Leader>F :GFiles<CR>
nmap <Leader>f :Files<CR>

" fzf Buffer Finder
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

nmap <Leader>t :BTags<CR>
nmap <S-t> :Tags<CR>
let g:fzf_tags_command = 'universal-ctags -R'

if executable('ag')
    " Use ag over grep "
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    " set grepprg = 'rg --vimgrep --type-not sql --smart-case'

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore "
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache "
    let g:ctrlp_use_caching = 0

    " bind \ (backward slash) to grep shortcut "
    command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap <leader>/ :Ag<SPACE>
endif


command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\   'rg --column --line-number --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
\   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
\           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
\   <bang>0)
nnoremap <C-g> :Rg<CR>


" Configuration: Plugin vim-ariline-themes
let g:airline_theme='simple'


" Configuration: Plugin jedi-vim
""stop preview window
""set completeopt-=preview
"autocmd FileType python setlocal completeopt-=preview
"" set foldmethod=manual
""autocmd FileType python setlocal foldmethod=manual
"autocmd BufRead,BufNewFile python set colorcolumn=79,119


"Configuration: Plugin nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
\ "Modified"  : "✹",
\ "Staged"    : "✚",
\ "Untracked" : "✭",
\ "Renamed"   : "➜",
\ "Unmerged"  : "═",
\ "Deleted"   : "✖",
\ "Dirty"     : "✗",
\ "Clean"     : "✔︎",
\ 'Ignored'   : '☒',
\ "Unknown"   : "?"
\ }
let g:NERDTreeGitStatusShowIgnored= 1



"" plugin vim-mundo configuration
"nnoremap <F5> :MundoToggle<CR>


" For comment in django template
autocmd FileType htmldjango setlocal commentstring={#\ %s\ #}

"" plugin simpylfold configurations
"let g:SimpylFold_fold_import = 0


" Configuration: Plugin ale
" install all required packages to global python version that vim was compiled with
" check compiled python version
" :py3 import sys; print(sys.version)

" Check Python files with flake8 and pylint.
let g:ale_linters = {
\   'python': ['pylint', 'flake8'],
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {'python': ['pylint', 'flake8']}
" Fix Python files with black, autopep8 and isort.
" \   'python': [''],
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

" Configuration: Ack.vim
" ack.vim --- {{{
" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
" let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
" let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps <leader>/ so we're ready to type the search keyword
nnoremap <leader>\ :Ack!<Space>
" }}}

" Configuration: Pluign isort
let s:available_short_python = ':py3'


" Configuration: UltiSnippets
"" assuming you want to use snipmate snippet engine
"" ActivateAddons vim-snippets snipmate

"" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
"" - https://github.com/Valloric/YouCompleteMe
"" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"


" Configuraion: Plugin tagbar
nmap <F8> :TagbarToggle<CR>


" Configuraion: Plugin vim-python-pep8-indent
" let g:python_pep8_indent_hang_closing = 1


" Configuration: Unknown
"nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" setting collected from Navigating Vim and Tmux Splits (Christopher)
if exists('$TMUX')
    function! TmuxOrSplitSwitch(wincmd, tmuxdir)
        let previous_winnr = winnr()
        silent! execute "wincmd " . a:wincmd
        if previous_winnr == winnr()
          call system("tmux select-pane -" . a:tmuxdir)
          redraw!
        endif
    endfunction

    let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
    let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
    let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

    nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
    nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
    nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
    nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
endif

" Enable resize vim spilits inside tmux using mouse
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end


" Configuration coc.nvim
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
" Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
inoremap <silent><expr> <c-space> coc#refresh()
else
inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
execute 'h '.expand('<cword>')
elseif (coc#rpc#ready())
call CocActionAsync('doHover')
else
execute '!' . &keywordprg . " " . expand('<cword>')
endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
autocmd!
" Setup formatexpr specified filetype(s).
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder.
" autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
" nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
" inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
" vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Mappings for CoCList
" Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
nnoremap <tab> %
vnoremap <tab> %




" Configuration: Experiment

"" practice with Learn vimscript the hard way
"" inoremap <c-d> <esc>ddO
"" inoremap <c-u> <esc>gUiwA
nnoremap <leader>r <c-w><c-r>
" autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
" autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
" let maplocalleader = "\\"
" let g:ale_disable_lsp = 1
" let g:vim_isort_python_version = 'python3'
" autocmd FileType python     :iabbrev <buffer> iff if:<left>
" autocmd FileType javascript :iabbrev <buffer> iff if ()<left>

" Configuration: Plugin Black
" autocmd BufWritePre *.py execute ':Black'
nnoremap <F9> :Black<CR>
autocmd BufWritePre *.py execute ':Isort'
let g:black_skip_string_normalization = 1


" map <silent> <C-F2> :if &guioptions =~# 'T' <Bar>
"             \set guioptions-=T <Bar>
"             \set guioptions-=m <bar>
"             \else <Bar>
"             \set guioptions+=T <Bar>
"             \set guioptions+=m <Bar>
"             \endif<CR>
