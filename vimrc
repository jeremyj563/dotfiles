if $VIM_PLUGINS != 'NO'
  if filereadable(expand('~/.vimbundle'))
    source ~/.vimbundle
  endif
  runtime! ftplugin/man.vim
endif

set nocompatible
set background=dark
let g:sonokai_style='andromeda'
let g:airline_theme='sonokai'
let g:sonokai_transparent_background=1
colorscheme sonokaimore
set laststatus=2
let g:airline_powerline_fonts=1

syntax on
filetype plugin indent on
set wildmenu
set wildmode=list:longest,full
set splitright
set splitbelow
set hidden
set whichwrap+=<,>,h,l,[,]
set nobackup
set nowritebackup
set noswapfile
set number
set numberwidth=5
set ruler
set splitbelow
set splitright
set expandtab
set tabstop=2
set shiftwidth=2
set linespace=2
set expandtab
set smarttab
set clipboard=unnamed

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

autocmd QuickFixCmdPost *grep* call fugitive#Cwindow()

let g:rails_projections = {
      \ "app/emitters/*_emitter.rb": {"command": "emitter"},
      \ "app/forms/*_form.rb": {"command": "form"},
      \ "app/forms/*_notifier.rb": {"command": "notifier"},
      \ "app/forms/*_renderer.rb": {"command": "renderer"},
      \ "app/forms/*_strategy.rb": {"command": "strategy"},
      \ "app/forms/*_validator.rb": {"command": "validator"},
      \ "features/*_feature.rb": {"command": "feature"}}

if has('persistent_undo')
  set undofile
  set undodir^=~/.vim/tmp//,~/Library/Vim/undo
endif

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
