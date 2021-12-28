let g:lightline = {
 \ 'colorscheme': 'challenger_deep',
 \ 'active': {
 \   'left': [ [ 'mode', 'paste' ],
 \             [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ],
 \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
 \ }
 \ }

" register compoments
call lightline#coc#register()
