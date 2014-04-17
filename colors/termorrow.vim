" File:       termorrow.vim
" Maintainer: George Czabania (stayradiated)
" URL:        https://github.com/stayradiated/vim-termorrow
" Modified:   12 Apr 2014 12:30 AM AEST
" License:    MIT

" Description:
" ----------------------------------------------------------------------------
" Based on vim-hybrid by w0ng. http://github.com/w0ng/vim-hybrid
" Designed for terminals only.


" Initialisation
" ----------------------------------------------------------------------------
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "termorrow"

" Palette:
" ----------------------------------------------------------------------------
"
let s:background = "0"    " Black
let s:foreground = "15"   " White

let s:line       = "0"    " Black
let s:selection  = "8"    " DarkGrey
let s:comment    = "7"    " LightGrey

let s:darkred    = "1"
let s:red        = "9"    " LightRed

let s:darkgreen  = "2"    " Green
let s:green      = "10"   " LightGreen

let s:orange     = "3"    " DarkYellow
let s:yellow     = "11"   " LightYellow

let s:darkblue   = "4"
let s:blue       = "12"   " LightBlue

let s:darkpurple = "5"
let s:purple     = "13"   " LightMagenta

let s:darkcyan   = "6"
let s:aqua       = "14"   " LightCyan



" Formatting Options:
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

" Highlighting Primitives;
" ----------------------------------------------------------------------------
exe "let s:bg_none       = ' ctermbg=".s:none      ."'"
exe "let s:bg_foreground = ' ctermbg=".s:foreground."'"
exe "let s:bg_background = ' ctermbg=".s:background."'"
exe "let s:bg_selection  = ' ctermbg=".s:selection ."'"
exe "let s:bg_line       = ' ctermbg=".s:line      ."'"
exe "let s:bg_comment    = ' ctermbg=".s:comment   ."'"
exe "let s:bg_red        = ' ctermbg=".s:red       ."'"
exe "let s:bg_orange     = ' ctermbg=".s:orange    ."'"
exe "let s:bg_yellow     = ' ctermbg=".s:yellow    ."'"
exe "let s:bg_green      = ' ctermbg=".s:green     ."'"
exe "let s:bg_aqua       = ' ctermbg=".s:aqua      ."'"
exe "let s:bg_blue       = ' ctermbg=".s:blue      ."'"
exe "let s:bg_purple     = ' ctermbg=".s:purple    ."'"
exe "let s:bg_darkgreen  = ' ctermbg=".s:darkgreen ."'"
exe "let s:bg_darkblue   = ' ctermbg=".s:darkblue  ."'"
exe "let s:bg_darkcyan   = ' ctermbg=".s:darkcyan  ."'"
exe "let s:bg_darkred    = ' ctermbg=".s:darkred   ."'"
exe "let s:bg_darkpurple = ' ctermbg=".s:darkpurple."'"

exe "let s:fg_none       = ' ctermfg=".s:none      ."'"
exe "let s:fg_foreground = ' ctermfg=".s:foreground."'"
exe "let s:fg_background = ' ctermfg=".s:background."'"
exe "let s:fg_selection  = ' ctermfg=".s:selection ."'"
exe "let s:fg_line       = ' ctermfg=".s:line      ."'"
exe "let s:fg_comment    = ' ctermfg=".s:comment   ."'"
exe "let s:fg_red        = ' ctermfg=".s:red       ."'"
exe "let s:fg_orange     = ' ctermfg=".s:orange    ."'"
exe "let s:fg_yellow     = ' ctermfg=".s:yellow    ."'"
exe "let s:fg_green      = ' ctermfg=".s:green     ."'"
exe "let s:fg_aqua       = ' ctermfg=".s:aqua      ."'"
exe "let s:fg_blue       = ' ctermfg=".s:blue      ."'"
exe "let s:fg_purple     = ' ctermfg=".s:purple    ."'"
exe "let s:fg_darkgreen  = ' ctermfg=".s:darkgreen ."'"
exe "let s:fg_darkblue   = ' ctermfg=".s:darkblue  ."'"
exe "let s:fg_darkcyan   = ' ctermfg=".s:darkcyan  ."'"
exe "let s:fg_darkred    = ' ctermfg=".s:darkred   ."'"
exe "let s:fg_darkpurple = ' ctermfg=".s:darkpurple."'"

exe "let s:fmt_none      = ' cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold      = ' cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi      = ' cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr      = ' cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb      = ' cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi      = ' cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl      = ' cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital      = ' cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd      = ' cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr      = ' cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb      = ' cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

" Vim Highlighting: (see :help highlight-groups)
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
"		Conceal"
"		Cursor"
"		CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_background  .s:bg_darkgreen   .s:fmt_none
exe "hi! DiffChange"    .s:fg_none        .s:bg_background  .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_red         .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_darkred     .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_background  .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_comment     .s:bg_none        .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_none        .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_none        .s:fmt_none
"		Incsearch"
exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fmt_bold
exe "hi! MatchParen"    .s:fg_foreground  .s:bg_background  .s:fmt_none
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
"		PmenuSbar"
"		PmenuThumb"
exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_background  .s:bg_green       .s:fmt_none
exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! SpellCap"      .s:fg_background  .s:bg_blue        .s:fmt_undr
exe "hi! SpellLocal"    .s:fg_aqua        .s:bg_darkcyan    .s:fmt_undr
exe "hi! SpellBad"      .s:fg_background  .s:bg_red         .s:fmt_undr
exe "hi! SpellRare"     .s:fg_purple      .s:bg_darkpurple  .s:fmt_undr
exe "hi! StatusLine"    .s:fg_foreground  .s:bg_line        .s:fmt_none
exe "hi! StatusLineNC"  .s:fg_comment     .s:bg_none        .s:fmt_none
exe "hi! TabLine"       .s:fg_foreground  .s:bg_none        .s:fmt_revr
"		TabLineFill"
"		TabLineSel"
exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
"		VisualNos"
exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
"		WildMenu"

" Use Xresources for background colour
exe "hi! Normal"        .s:fg_foreground  .s:bg_none        .s:fmt_none

" Generic Syntax Highlighting: (see :help group-name)
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
"		Character"
"		Number"
"		Boolean"
"		Float"

exe "hi! Identifier"      .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fmt_none

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
"		Conditional"
"		Repeat"
"		Label"
exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Keyword"
"		Exception"

exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Include"
"		Define"
"		Macro"
"		PreCondit"

exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fmt_none
"		StorageClass"
exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Typedef"

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"		SpecialChar"
"		Tag"
"		Delimiter"
"		SpecialComment"
"		Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_red         .s:bg_darkred     .s:fmt_undr

exe "hi! Todo"            .s:fg_green       .s:bg_background  .s:fmt_none

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

" Diff Syntax Highlighting:
" ----------------------------------------------------------------------------
" Diff
"		diffOldFile
"		diffNewFile
"		diffFile
"		diffOnly
"		diffIdentical
"		diffDiffer
"		diffBDiffer
"		diffIsA
"		diffNoEOL
"		diffCommon
hi! link diffRemoved Constant
"		diffChanged
hi! link diffAdded Special
"		diffLine
"		diffSubname
"		diffComment

" Legal:
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
" Copyright (c) 2014 stayradiated
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
