vim9script

packadd lsp
packadd! vim-fugitive
packadd! vim-sleuth
packadd! vimspector

filetype plugin indent on
syntax on
colorscheme bionik2
set number
set signcolumn=yes
set mouse=a
set backspace=indent,eol,start

if executable('clangd')
call LspAddServer([{ filetype: ['c', 'cpp'], path: 'clangd', args: ['--background-index'] }])
endif

if executable('rust-analyzer')
call LspAddServer([{ filetype: ['c', 'cpp'], path: 'clangd', args: ['--background-index'] }])
endif

