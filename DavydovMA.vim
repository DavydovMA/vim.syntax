" Vim color file
" Maintainer:	DavydovMA <davydovma@domain>
" Last Change:	2021-02-10-00

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

highlight Comment	ctermfg=Grey
"			guifg=#777777
"        *Constant       any constant
"         String         a string constant: "this is a string"
"         Character      a character constant: 'c', '\n'
"         Number         a number constant: 234, 0xff
"         Boolean        a boolean constant: TRUE, false
"         Float          a floating point constant: 2.3e10
highlight Constant	ctermfg=Blue"
"			guifg=#777777
"        *Identifier     any variable name
"         Function       function name (also: methods for classes)
highlight Identifier	ctermfg=Yellow
"			guifg=#777777
"        *Statement      any statement
"         Conditional    if, then, else, endif, switch, etc.
"         Repeat         for, do, while, etc.
"         Label          case, default, etc.
"         Operator       "sizeof", "+", "*", etc.
"         Keyword        any other keyword
"         Exception      try, catch, throw
highlight Statement	ctermfg=Green
"			guifg=#777777 gui=bold
"        *PreProc        generic Preprocessor
"         Include        preprocessor #include
"         Define         preprocessor #define
"         Macro          same as Define
"         PreCondit      preprocessor #if, #else, #endif, etc.
highlight PreProc	ctermfg=Magenta
"			guifg=#777777
"        *Type           int, long, char, etc.
"         StorageClass   static, register, volatile, etc.
"         Structure      struct, union, enum, etc.
"         Typedef        A typedef
highlight Type		ctermfg=DarkGreen
"			guifg=#007700
"        *Special        any special symbol
"         SpecialChar    special character in a constant
"         Tag            you can use CTRL-] on this
"         Delimiter      character that needs attention
"         SpecialComment special things inside a comment
"         Debug          debugging statements
highlight Special	ctermfg=DarkBlue
"			guifg=#777777
"        *Underlined     text that stands out, HTML links
highlight Underlined	ctermfg=DarkCyan
"			guifg=#777777
"        *Ignore         left blank, hidden  |hl-Ignore|
highlight Ignore	ctermfg=Red
"			guifg=#777777
"        *Error          any erroneous construct
highlight Error		ctermfg=White ctermbg=Red cterm=Bold
"			guibg=#ff0000
"        *Todo           anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
highlight Todo		ctermfg=Red ctermbg=Yellow cterm=Bold
"			guifg=#777777 guibg=#ffff00

" end.