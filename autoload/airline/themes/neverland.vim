"NEVERLAND VIM-AIRLINE THEME
"---------------------------
"File: neverland.vim
"Author: cyma <cyma.git@protonmail.ch>
"Source: <https://github.com/cyma/debian>
"---------------------------
"
"Based on jellybeans airline theme (MIT License)
"<https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/jellybeans.vim

"For colorscheme neverland/neverland2 created by:

"Magnus Woldrich <https://github.com/trapd00r/neverland-vim-theme>



" Color palette
let s:gui00 = "#121212"
let s:gui01 = "#262626"
let s:gui02 = "#ff005f"
let s:gui03 = "#ffafff"
let s:gui04 = "#d70000"
let s:gui05 = "#ff8700"
let s:gui0A = "#ffff87"
let s:gui0B = "#00ff00"
let s:gui0C = "#5fd7ff"
let s:gui0D = "#0087ff"
let s:gui0E = "#d7af5f"

let s:cterm00 = "233"
let s:cterm01 = "235"
let s:cterm02 = "197"
let s:cterm03 = "219"
let s:cterm04 = "160"
let s:cterm05 = "208"
let s:cterm0A = "228"
let s:cterm0B = "46"
let s:cterm0C = "81"
let s:cterm0D = "33"
let s:cterm0E = "179"

let s:guiWhite = "#ffffff"
let s:guiGray = "#626262"
let s:ctermWhite = "256"
let s:ctermGray = "241"

let g:airline#themes#neverland#palette = {}
let s:modified = { 'airline_c': [ '#ffff87', '', 228, '', '' ] }

" Normal mode
let s:N1 = [ s:gui00 , s:gui0C , s:cterm01 , s:cterm0C  ]
let s:N2 = [ s:gui0E , s:gui01 , s:cterm0E , s:cterm01  ]
let s:N3 = [ s:guiGray , s:gui00 , s:cterm0A , s:cterm01  ]
let g:airline#themes#neverland#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#neverland#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:gui00 , s:gui0B , s:cterm01 , s:cterm0B  ]
let s:I2 = s:N2
let s:I3 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01  ]
let g:airline#themes#neverland#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#neverland#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:gui00 , s:gui05 , s:cterm00 , s:cterm05 ]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#neverland#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#neverland#palette.visual_modified = s:modified
" Replace mode
let s:R1 = [ s:gui00 , s:gui02 , s:cterm01, s:cterm02 ]
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#neverland#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#neverland#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:guiGray , s:gui00 , s:ctermGray , s:cterm00 ]
let s:IN2 = s:N2
let s:IN3 = [ s:guiGray , s:gui01 , s:ctermGray , s:cterm01 ]
let g:airline#themes#neverland#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#neverland#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:gui0D , s:gui01 , s:cterm0C , s:cterm01  ]
let s:CP2 = [ s:guiWhite , s:guiGray , s:ctermWhite , s:ctermGray  ]
let s:CP3 = [ s:gui00 , s:gui03 , s:cterm00 , s:cterm03  ]

let g:airline#themes#neverland#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

