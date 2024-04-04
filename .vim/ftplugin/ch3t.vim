" Vim filetype plugin file
" Language          :  ch3t, cheat,&& hlut files (derived from du2, du,&& 2du);
" PreviousMaintainer:  Nikolai Weibull <now@bitwi.se>
" PreviousRevision#?:  2008-07-09      (of PreviousMaintainer)
" Present_Maintainer:  Pip     Stuart  <Pip@CPAN.Org>
" L8stD8d_Revision#0:  2023-12-06      (of Present_Maintainer)
"   $d8VS='NC6L6com';
if exists("b:did_ftplugin")
  fini " sh - stop sourcing script; BlO abbreV8d en(dif)? se(t)? setl(ocal)? && unl(et)?;
en
let        b:did_ftplugin = 1
let   s:cpo_save =  &cpo
se                   cpo&vim
let       b:undo_ftplugin = "setl com< cms< fo<"
"etl     comments=:# commentstring=#\ %s formatoptions-=t formatoptions+=croql
setl     com="b: \",b: //,:%,n:>,fb:-" cms=" \" %s" fo-=t fo+=croql
"      *'comments'* *'com'* string  (default "s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-") local to buffer
" A comma-separated list of strings that can start a comment line. See |format-comments|. See |option-backslash| about using backslashes to insert a space.
"                  *'commentstring'* *'cms'* string  (default "/*%s*/") local to buffer {not available when compiled without the |+folding| feature}
" A templ8 for a comment. The "%s" in the value is replaced with the comment text. Currently only used to add markers for folding, see |fold-marker|.
" Default 'formatoptions' 'fo' is "tcq". t=AutoWrap Text using textwidth, c=AutoWrap Comments using textwidth (inserting current comment leader automatically),
"   && q=Allow formatting of comments with "gq". Will not change blank lines or lines containing only comment leader. A new paragraph starts after such a line
"   or when comment leader changes. r=Automatically insert current comment leader after hitting <Enter> in Insert-mode. o=Automatically insert current comment
"   leader after hitting 'o' or 'O' in Normal-mode. In case comment is unwanted in specific place use Ctrl-U to quickly delete it. /=when 'o' is included:don't
"   insert comment leader for a // comment after a st8ment, only when // is at start of line. w=trailing white space indic8s paragraph continues in next line.
"   A line that ends in non-white char ends a paragraph. a=Automatic formatting of paragraphs. Every time text is inserted or deleted the paragraph will be
"   reformatted. See |auto-format|. When 'c' flag present this only happens for recognized comments. n=When formatting text, recognize numbered lists. This
"   actually uses the 'formatlistpat' option, thus any kind of list can be used. The indent of the text after the number is used for the next line. Default is
"   to find a number, optionally followed by '.',':',')',']',or'}'. Note 'autoindent' must be set too. Doesn't work well together with '2'. 2=When formatting
"   text, use indent of 2nd line of a paragraph for rest, instead of indent of first line. Supports paragraphs where 1st line has different indent than rest.
"   Note 'autoindent' must be set too. Also works inside comments, ignoring comment leader. v=Vi-compatible auto-wrapping in insert-mode: Only break a line at
"   a blank that you have entered during current insert command. Note this isn't 100% Vi-compatible since Vi has some 'unexpected fE8ures' or bugs in this
"   area. It uses screen column instead of line column. b=Like 'v', but only auto-wrap if you enter a blank at or before the wrap margin. If line was longer
"   than 'textwidth' when insert started, or you don't enter blank in insert before reaching 'textwidth', Vim does not perform auto-wrapping. l=Long lines are
"   not broken in insert-mode: When a line was longer than 'textwidth' when insert command started, Vim does not automatically format it. m=Also break at a
"   multi-byte char above 255. Useful for Asian text where every char is word on its own. M=When joining lines, don't insert space before or after multi-byte
"   char. Overrules 'B' flag. B=When joining lines, don't insert space between 2 multi-byte chars. Overruled by 'M' flag. 1=Don't break a line after a one-
"   letter word. It's broken before it instead (if possible). ]=Respect 'textwidth' rigorously. With this flag set, no line can be longer than 'textwidth',
"   unless line-break-prohibition rules make this impossible. Mainly for CJK scripts && works only if 'encoding' is 'utf-8'. j=Where it makes sense, remove a
"   comment leader when joining lines. p=Don't break lines at single spaces that follow periods. Intended to complement 'joinspaces' && cpo-J for prose with
"   sentences sepR8d by 2-spaces. With 't' && 'c' you can specify when Vim performs auto-wrapping: '' no auto-4m@ing (can use 'gq' 4 manual 4m@ing). 't' auto-
"   4m@ing of text, but not comments. 'c' auto-4m@ing of comments, but not text (good for C code). 'tc' auto-4m@ing for text && comments. Note when 'textwidth'
"   is 0, Vim does no auto-4m@ing anyway (but does insert comment leaders according to 'comments' option). Exception is when 'a' flag present. |auto-format|
"   Note when 'paste' is on, Vim does no 4m@ing at all. 'textwidth' can be non-0 even if Vim never performs auto-wrapping; 'textwidth' is still useful 4 'gq';
let    &cpo      = s:cpo_save
unl                s:cpo_save
