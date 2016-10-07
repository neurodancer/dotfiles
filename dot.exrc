""
"" $Id: .exrc,v 1.54 2006/08/03 14:59:31 shannon Exp $
""
set errorbells
set wrapmargin=8
set shiftwidth=4
set ts=4
set autoindent
set showmatch
set tags=./tags
" remap tab to behave like T^, should be compatible with all the vi's that I
" use now (nvi and vim)
"
"map! 	 
""set matchtime=4
set ruler
set showmode
" set modeline
map  ma{!}par -w 72 }
"
" -------------------------------------------------- writing code
"
"
" turn on line numbering
"
map \n :set number
map \N :set nonumber
" left margin comment in C
ab cM /* **/kA
" inline comment in C
ab ccM /* */hhi
"
" C includes
"
ab incstand #include <stdio.h>#include <stdlib.h>#include <unistd.h>#include <string.h>
ab _rcs static char rcsid[]="$Id";
ab _sccs static char sccsid[]="%W% %G%";
"
" -------------------------------------------------- file/function headers
"  
" print a function header
map ,f :.,/^[ \t]*$/ !ksh ~/.vi/function.sh
" print a new file header
map ,n :.,/^[ \t]*$/ !ksh ~/.vi/newfile.sh
" print a division header
map ,h :.,/^[ \t]*$/ !ksh ~/.vi/header.sh
" print a leader line
map ,h :.,/^[ \t]*$/ !ksh ~/.vi/header.sh
"
" -------------------------------------------------- shell commands
"
" run "% <command>" and put output in buffer
map ,! yypxx!}sh
"
"
"
" ----------------------------------- temp file commands and cut paste commands
"
" write to temporary file
" REWRITE
"
" cut and paste
" mm to cut, meta-q/g to copy/cut, meta-v to paste
map \c mn"my'`n 
map \x "md'm
map \v "mp
" -------------------------------------------------- input macros
"
""
""	INVERT CASE ON WORDS -- V is like W, v is like w.  3V is fine, but only to EOL.
""	uses both register n and mark n.
map \w ywmnoP:s/./\~/g0"nDdd`n@n
""	abc -> ABC    ABC->abc
map \W yWmnoP:s/./\e~/g0"nDdd`n@n
""	abc.xyz -> ABC.XYZ    ABC.XYZ->abc.xyz
""
"" For VT100 Terminals
""
"set ai redraw sm wm=1
"set tabstop=4
"set shiftwidth=4
"" great for auto indenting { } pairs.
" map! {} {}O	
map \4 :set sw=4 tabstop=4
map \8 :set sw=8 tabstop=8
map \48 :set tabstop=8 sw=4
"
" -------------------------------------------------- email
"
ab _cshat csh@widomaker.com
ab _shannonat shannon@widomaker.com
ab _goidat goid@widomaker.com
ab _757at csh@users.757.org
ab _at csh@widomaker.com shannon@widomaker.com goid@widomaker.com
"
" -------------------------------------------------- dividers
"
ab i5 -----
ab i10 ----------
ab i10 ----------
ab i20 --------------------
ab i30 ------------------------------
ab i40 ----------------------------------------
ab i50 --------------------------------------------------
ab i60 ------------------------------------------------------------
