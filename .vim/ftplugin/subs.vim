" Vim filetype plugin file
" Language           :  subs, sub, && CC files (derived from my du2);
" Previous Maintainer:  Nikolai Weibull <now@bitwi.se>
" Previous   Revision:  2008-07-09      (of previous maintainer)
" Present  Maintainer:  Pip     Stuart  <Pip@CPAN.Org>
" Latest     Revision:  2023-12-15      (current)
"   $d8VS='NCFL3FTP';
if exists("b:did_ftplugin")
  finish
endif
let        b:did_ftplugin = 1
let   s:cpo_save = &cpo
set                 cpo&vim
let       b:undo_ftplugin = "setl com< cms< fo<"
setlocal comments=:# commentstring=#\ %s formatoptions-=t formatoptions+=croql
let    &cpo      = s:cpo_save
unlet              s:cpo_save
