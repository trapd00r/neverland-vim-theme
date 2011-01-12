" Vim color file - neverland.vim
" Eyes are sober, this is the plan
" I'm sitting in a car heading Neverland
" Author: Magnus Woldrich <trapd00r@trapd00r.se>


" Set background first
set background=dark
hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="neverland"

" GUI color support added by stack_underflow 
hi Boolean         guifg=#AF5FFF
hi Character       guifg=#AFAF5F
hi Number          guifg=#0087FF
hi String          guifg=#D7AF5F
hi Conditional     guifg=#FF0000               gui=bold
hi Constant        guifg=#87AF00               gui=bold
hi Cursor          guifg=#AFD787 guibg=#DADADA
hi Debug           guifg=#FFD7FF               gui=bold
hi Define          guifg=#5FD7FF
hi Delimiter       guifg=#626262

hi DiffAdd                       guibg=#005F87
hi DiffChange      guifg=#D7AFAF guibg=#4E4E4E
hi DiffDelete      guifg=#D70087 guibg=#5F005F
hi DiffText                      guibg=#878787 gui=bold

hi Directory       guifg=#87FF00               gui=bold
hi Error           guifg=#FFAFFF guibg=#87005F
hi ErrorMsg        guifg=#FF00AF guibg=#000000 gui=bold
hi Exception       guifg=#87FF00               gui=bold
hi Float           guifg=#AF5FFF
hi FoldColumn      guifg=#5F87AF guibg=#000000
hi Folded          guifg=#5F87AF guibg=#000000
hi Function        guifg=#87FF00
hi Identifier      guifg=#AFD75F
hi Ignore          guifg=#808080 guibg=#080808
hi IncSearch       guifg=#D7FFAF guibg=#000000

hi Keyword         guifg=#87AFFF               gui=bold
hi Label           guifg=#FFFFAF               gui=none
hi Macro           guifg=#D7FFAF
hi SpecialKey      guifg=#5FD7FF

hi MatchParen      guifg=#FF0000 guibg=#1C1C1C gui=bold
hi ModeMsg         guifg=#FFAF5F
hi MoreMsg         guifg=#FFAF5F
hi Operator        guifg=#AFD700

" complete menu
hi Pmenu           guifg=#5FD7FF guibg=#121212
hi PmenuSel                      guibg=#262626
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#5FD7FF

hi PreCondit       guifg=#87FF00               gui=bold
hi PreProc         guifg=#FFAFD7
hi Question        guifg=#5FD7FF
hi Repeat          guifg=#D7005F               gui=bold
hi Search          guifg=#1C1C1C guibg=#FFD787

" marks column
hi SignColumn      guifg=#87FF00 guibg=#262626
hi SpecialChar     guifg=#D7005F               gui=bold
hi SpecialComment  guifg=#8A8A8A               gui=bold
hi Special         guifg=#5FD7FF guibg=#080808
hi SpecialKey      guifg=#8A8A8A

hi Statement       guifg=#D78700               gui=bold
hi StatusLine      guifg=#1C1C1C guibg=#AF8700
hi StatusLineNC    guifg=#1C1C1C guibg=#878700
hi StorageClass    guifg=#FF8700
hi Structure       guifg=#5FD7FF
hi Tag             guifg=#D7005F
hi Title           guifg=#5FAF5F
hi Todo            guifg=#D70000 guibg=#121212 gui=bold

hi Typedef         guifg=#5FD7FF
hi Type            guifg=#D75F00               gui=none
hi Underlined      guifg=#87AF00               gui=none

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#444444
hi Visual                        guibg=#262626
hi WarningMsg      guifg=#0000FF guibg=#444444 gui=bold
hi WildMenu        guifg=#5FD7FF guibg=#000000

hi Normal          guifg=#FFD7FF guibg=#121212
hi Comment         guifg=#AF875F
hi CursorLine                    guibg=#1C1C1C gui=none
hi CursorColumn                  guibg=#121212
hi LineNr          guifg=#626262 guibg=#121212
hi NonText         guifg=#121212 guibg=#121212

hi TabLine         guifg=#878700 guibg=#121212
hi TabLineFill     guifg=#121212 guibg=#121212
hi TabLineSel      guifg=#FFD700 guibg=#1C1C1C


if &t_Co > 255
  " Setting normal before any other highlight group is a good idea
   hi Normal          ctermfg=225 ctermbg=233

   " background might have changed to 'light', so fix it
   set background=dark

   hi Boolean         ctermfg=135
   hi Character       ctermfg=143
   hi Number          ctermfg=33
   hi String          ctermfg=179
   hi Conditional     ctermfg=196               cterm=bold
   hi Constant        ctermfg=106               cterm=bold
   hi Cursor          ctermfg=150 ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102   cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=149
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=111               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=196 ctermbg=234   cterm=bold
   hi ModeMsg         ctermfg=215
   hi MoreMsg         ctermfg=215
   hi Operator        ctermfg=148

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=233
   hi PmenuSel                    ctermbg=235
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=218
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=234 ctermbg=222

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=232
   hi SpecialKey      ctermfg=245

   hi Statement       ctermfg=172               cterm=bold
   hi StatusLine      ctermfg=234 ctermbg=136
   hi StatusLineNC    ctermfg=234 ctermbg=100
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=71
   hi Todo            ctermfg=160 ctermbg=233   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=166               cterm=none
   hi Underlined      ctermfg=106               cterm=none

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=21  ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=137
   hi CursorLine                  ctermbg=234   cterm=none
   hi CursorColumn                ctermbg=233
   hi LineNr          ctermfg=241 ctermbg=233
   hi NonText         ctermfg=233 ctermbg=233

   hi TabLine         ctermfg=100 ctermbg=233
   hi TabLineFill     ctermfg=233 ctermbg=233
   hi TabLineSel      ctermfg=220 ctermbg=234
end
