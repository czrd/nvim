highlight IndentBlanklineContextChar guifg=#00FF00 gui=nocombine
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_show_current_context = v:true
let g:indent_blankline_context_patterns = [
                  \'^func',
                  \'^if',
                  \'^var',
                  \'argument_list',
                  \'arguments',
                  \'array',
                  \'arrow_function',
                  \'body',
                  \'class',
                  \'const',
                  \'dictionary',
                  \'element',
                  \'except',
                  \'for',
                  \'import',
                  \'method',
                  \'object',
                  \'parameters',
                  \'struct',
                  \'switch',
                  \'table',
                  \'try',
                  \'tuple',
                  \'type',
                  \'while',
                  \'with'
                  \]
