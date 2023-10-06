
syntax on
set tabstop=4
set number
highlight LineNr ctermbg=DarkGrey ctermfg=black
highlight Comment ctermfg=Grey
set clipboard=unnamedplus
set backspace=indent,eol,start
highlight Pmenu ctermfg=white ctermbg=DarkGrey  guifg=#ffffff guibg=DarkGrey
highlight Error ctermfg=white ctermbg=red
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_keep_logfiles = 0
let g:ycm_server_python_interpreter = '/usr/bin/python' 
let g:ycm_enable_diagnostic_highlighting = 1
highlight YcmErrorSection ctermbg=DarkGrey ctermfg=white
highlight YcmErrorSign ctermbg=DarkGrey ctermfg=white
highlight YcmWarningSection ctermbg=DarkGrey  ctermfg=white
highlight YcmWarningSign ctermbg=DarkGrey ctermfg=white
highlight SignColumn ctermbg=black

" to remove signs in vim gutter
" set signcolumn=no
