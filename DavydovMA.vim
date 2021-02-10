" Vim color file
" Maintainer:	DavydovMA <davydovma@domain>
" Last Change:	2021-02-10-01

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "DavydovMA"

" 0       0       Black
" 1       4       DarkBlue
" 2       2       DarkGreen
" 3       6       DarkCyan
" 4       1       DarkRed
" 5       5       DarkMagenta
" 6       3       Brown, DarkYellow
" 7       7       LightGray, LightGrey, Gray, Grey
" 8       0*      DarkGray, DarkGrey
" 9       4*      Blue, LightBlue
" 10      2*      Green, LightGreen
" 11      6*      Cyan, LightCyan
" 12      1*      Red, LightRed
" 13      5*      Magenta, LightMagenta
" 14      3*      Yellow, LightYellow
" 15      7*      White

hi	Normal							guifg=White guibg=Black

highlight Comment	cterm=NONE ctermfg=Grey			gui=NONE guifg=Gray
"        *Constant       any constant
"         String         a string constant: "this is a string"
"         Character      a character constant: 'c', '\n'
"         Number         a number constant: 234, 0xff
"         Boolean        a boolean constant: TRUE, false
"         Float          a floating point constant: 2.3e10
highlight Constant	cterm=NONE ctermfg=Blue			gui=NONE guifg=Blue
"        *Identifier     any variable name
"         Function       function name (also: methods for classes)
highlight Identifier	cterm=NONE ctermfg=Yellow		gui=NONE guifg=Yellow
"        *Statement      any statement
"         Conditional    if, then, else, endif, switch, etc.
"         Repeat         for, do, while, etc.
"         Label          case, default, etc.
"         Operator       "sizeof", "+", "*", etc.
"         Keyword        any other keyword
"         Exception      try, catch, throw
highlight Statement	cterm=NONE ctermfg=Green		gui=NONE guifg=Green
"        *PreProc        generic Preprocessor
"         Include        preprocessor #include
"         Define         preprocessor #define
"         Macro          same as Define
"         PreCondit      preprocessor #if, #else, #endif, etc.
highlight PreProc	cterm=NONE ctermfg=Magenta		gui=NONE guifg=Magenta
"        *Type           int, long, char, etc.
"         StorageClass   static, register, volatile, etc.
"         Structure      struct, union, enum, etc.
"         Typedef        A typedef
highlight Type		cterm=NONE ctermfg=DarkGreen		gui=NONE guifg=DarkGreen
"        *Special        any special symbol
"         SpecialChar    special character in a constant
"         Tag            you can use CTRL-] on this
"         Delimiter      character that needs attention
"         SpecialComment special things inside a comment
"         Debug          debugging statements
highlight Special	cterm=NONE ctermfg=DarkBlue		gui=NONE guifg=DarkBlue
"        *Underlined     text that stands out, HTML links
highlight Underlined	cterm=NONE ctermfg=DarkCyan		gui=NONE guifg=DarkCyan
"        *Ignore         left blank, hidden  |hl-Ignore|
highlight Ignore	cterm=NONE ctermfg=Red			gui=NONE guifg=Red
"        *Error          any erroneous construct
highlight Error		cterm=Bold ctermfg=White ctermbg=Red	gui=Bold guifg=White guibg=Red
"        *Todo           anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
highlight Todo		cterm=Bold ctermfg=Red ctermbg=Yellow	gui=Bold guifg=Red guibg=Yellow

" end.