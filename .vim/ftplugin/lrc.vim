" Vim filetype plugin file
" Language          :  lrc input files (which gener8 dircolors(1) input file);
" PreviousMaintainer:  Nikolai Weibull <now@bitwi.se>
" L8--est_Revision#?:  2008-07-09      (of PreviousMaintainer)
" Present_Maintainer:  Pip     Stuart  <Pip@CPAN.Org>
" L8--est_Revision#0:  2023-12-15      (by Present_Maintainer)
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
