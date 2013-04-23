set nocompatible               " be iMproved
filetype off                   " required!

" Avoid error messages in buffers (used by some plugins)
set hidden

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Python integration
"Bundle 'klen/python-mode'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Bundle 'kien/ctrlp.vim'
"Bundle 'endel/ctrlp-filetype.vim'

" Allows to comment lines
Bundle 'scrooloose/nerdcommenter'

" Postgresql & MySQL commands from vim
Bundle 'ivalkeen/vim-simpledb'

" Syntax for Postgresql
Bundle 'exu/pgsql.vim'
au BufNewFile,BufRead *.sql setf pgsql

" Hightlight symbols for nginx
Bundle 'vim-scripts/nginx.vim'

" File/Project tree explorer
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\.o$', '\~$']

" HTML5 syntax
Bundle 'othree/html5.vim'

" The only one good plugin with Jinja templates support
"Bundle 'lepture/vim-jinja'
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja
"Bundle 'vim-scripts/Jinja'
Bundle 'Glench/Vim-Jinja2-Syntax'

" :VirtualEnvDeactivate
" :VirtualEnvList
" :VirtualEnvActivate spam
" :VirtualEnvActivate <tab>
Bundle 'jmcantrell/vim-virtualenv'

" For HTML tagmatch
Bundle 'gregsexton/MatchTag'

" Python & PHP debugger
"Bundle 'fisadev/vim-debug.vim'
"Bundle 'tobinvanpelt/vim-semicolon'
"Bundle 'vim-scripts/VimPdb'
"Bundle 'joonty/vdebug.git'
"Bundle 'brookhong/DBGPavim'
"let g:dbgPavimPort = 9000
"let g:dbgPavimBreakAtEntry = 0
Bundle 'gotcha/vimpdb'

" Most recently used files
Bundle 'vim-scripts/mru.vim'

" Tag browser
Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" http://sjl.bitbucket.org/gundo.vim/
Bundle 'sjl/gundo.vim'
nnoremap <F3> :GundoToggle<CR>
let g:gundo_width = 60
"let g:gundo_preview_height = 40
"let g:gundo_right = 1

" Buffer and file explorer
Bundle 'vim-scripts/LustyExplorer'

" Buffer jugler
Bundle 'vim-scripts/LustyJuggler'

" Top 200 vim themes
" Bundle 'vim-scripts/Colour-Sampler-Pack'

" Scroll vim themes using :SCROLL
Bundle 'vim-scripts/ScrollColors'

" Get things done (tasklist)
Bundle 'samsonw/vim-task'

" FIXME, TODO, XXX
Bundle 'vim-scripts/TaskList.vim'
"Bundle 'LStinson/TagmaTasks'

" Include powerline, make sure to configure
" terminal with a valid fonts
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Visually display indent levels in code
Bundle 'nathanaelkane/vim-indent-guides'
"set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" <leader>ig - tuggle visible idents

" Transforms GUI color scheme to a terminal one
"Bundle 'vim-scripts/CSApprox'

" Autoclose ", ', (
" http://vim.wikia.com/wiki/Automatically_append_closing_characters
"Bundle 'vim-scripts/AutoClose' " WARNING! breaks insert mode on tmux
"Bundle 'Townk/vim-autoclose'
"Bundle 'andrewle/vim-autoclose'
Bundle 'vim-scripts/simple-pairs'
"Bundle 'Raimondi/delimitMate'

" When you want to unload/delete/wipe a buffer, use:
"     :bun/:bd/:bw to close the window as well (vim command), or
"     :BUN/:BD/:BW to leave the window(s) intact (this script).
"     To move backwards and forwards through the chronological 
"     list of buffers accessed, use :BB and :BF, respectively.
"     Mappings are also defined.
Bundle 'vim-scripts/bufkill.vim'

Bundle 'vim-scripts/pydoc.vim'
" Pressing "K" takes you to the documentation for the word under the cursor.
autocmd filetype python source ~/.vim/bundle/pydoc.vim/plugin/pydoc.vim

" Snipmate dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
" Snipmate plugin
Bundle "garbas/vim-snipmate"

" Colorschemes
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'
Bundle 'vim-scripts/wombat256.vim'
Bundle 'vim-scripts/xoria256.vim'
Bundle 'vim-scripts/tir_black'
"colorscheme wombat256mod
colorscheme Tomorrow-Night
set t_Co=256
set background=dark
"colorscheme vividchalk 
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized

filetype plugin indent on     " required!

" Enable filetypes
filetype on

" Enable filetype plugins
filetype plugin on

" Don't update the display while executing macros
set lazyredraw

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" At least let yourself know what mode you're in
set showmode

" Python indents http://habrahabr.ru/post/64224/
"set tabstop=4  " amount of spaces that represents a tab 
"set shiftwidth=4  " amount of spaces on shift (<< / >>) action
"set smarttab  " if tab pressed on line start do tabstop amount of spaces
"set expandtab  " change tabs to spaces on insert
" Wrapping and tabs.
set tw=78 ts=4 sw=4 sta et sts=4 ai

" Let Python hightlight everything possible
let python_highlight_all = 1

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

" Shows the current line in different color
set cursorline 

" Hide mouse when typing
"set mousehide

" Disable cursor blink
set gcr=a:blinkon0

" Minimal number of screen lines to keep above and 
" below the cursor
set scrolloff=4

" Make a visual line on 80 column
set colorcolumn=80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"highlight ColorColumn ctermbg=8

" Do not blink
set novisualbell

" Do not beep
set t_vb=

" Changing backspace behaviour
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Display '+' on code blocks
set foldcolumn=1

" Show line numbers by default
set number

" Do not wrap lines
set nowrap
" set wrap

" Break lines
set linebreak

" Configure vim backup files behaviour
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files
" set backupdir=~/tmp " make sure the folder exists

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Enlarge command-line history
set history=256

" Enable mouse
set mouse=n

" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
" make mouse window resize work in tmux
set ttymouse=xterm

set term=screen-256color

" Set terminal title to filename
"set title

" These are very similar keys. Typing 'a will jump to the line in the
" current file marked with ma. However, `a will jump to the line and
" column marked with ma
nnoremap ' `
nnoremap ` '

" Line numbers, rulers, and everything else"
"set ruler

" always show status bar
set ls=2

" Incremental search
set incsearch

" highlighted search results
set hlsearch

" Save as sudo
ca w!! w !sudo tee "%"

" Set encoding
set encoding=utf-8

" Remap leader key
let mapleader = ","

" Copy/Paste by Ctrl+C/Ctrl+V
vmap <C-C> "+yi
imap <C-V> "+gPi

" Share windows clipboard
"set clipboard+=unnamed   " unknown option

" Use :make to see syntax errors. (:cn and :cp to move around, :dist to see
" all errors)
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Enale syntax and highlight trailing spaces
syntax enable
"syntax on  " didn't work and crashed the 256 colors in tmux vim

" Extra white space detection
"highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
"au Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Toogle paste mode with visual feedback
"nnoremap <F10> :set invpaste paste?<CR>
"set pastetoggle=<F10>
"set showmode
"nnoremap <F10> :set invpaste paste?<CR>
"imap <F10> <C-O>:set invpaste paste?<CR>
"set pastetoggle=<F10>
" https://blogs.oracle.com/bloggerkedar/entry/vim_tip_copying_from_elsewhere
set nopaste
set pastetoggle=<F10>
"set pastetoggle=<Leader>pt

" Uncomment the following to have Vim jump to the last position when 
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Reload vim config file when it changes
"augroup myvimrc
    "au!
    "au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
"augroup END

" Author: Bernardo Fontes <falecomigo@bernardofontes.net>
" Website: http://www.bernardofontes.net
" This code is based on this one: http://www.cmdln.org/wp-content/uploads/2008/10/python_ipdb.vim
" I worked with refactoring and it simplifies a lot the remove breakpoint feature.
" To use this feature, you just need to copy and paste the content of this file at your .vimrc file! Enjoy!
python << EOF
import vim
import re

def set_breakpoint():
    breakpoint_line = int(vim.eval('line(".")')) - 1
    current_line = vim.current.line
    white_spaces = re.search('^(\s*)', current_line).group(1)
    vim.current.buffer.append(white_spaces + ipdb_breakpoint, breakpoint_line)

vim.command('map <f6> :py set_breakpoint()<cr>')

def remove_breakpoints():
    op = 'g/^.*%s.*/d' % ipdb_breakpoint
    vim.command(op)

vim.command('map <f7> :py remove_breakpoints()<cr>')
EOF

" Execute a selection of code (very cool!)
" Use VISUAL to select a range and then hit ctrl-h to execute it.
python << EOL
import vim
def EvaluateCurrentRange():
    eval(compile('\n'.join(vim.current.range),'','exec'),globals())
EOL
map <C-h> :py EvaluateCurrentRange()

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" `gf` jumps to the filename under the cursor.  Point at an import statement
" and jump to it!
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF


