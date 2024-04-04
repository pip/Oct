" NC6L3cht:~/.vim/ftdetect/ch3t.vim crE8d by PipStuart <Pip@CPAN.Org>; this file was derived from du.vim (which was for my 2.du && .2du files),
"   && is now repurposed for my vi*.ch3t (Cheat-Sheet) files mostly in my ~/dox/dvl/ref/ directory; $d8VS='NC6L3cht';
" might l8r want 2 mk hlut sepR8 ft from ch3t && EvN handl thM difrNtly alsO;
" augroup hlut_ft
"   au!
"  "autocmd BufNewFile,BufRead *.lrc  set   syntax=lsclrz
"   autocmd BufNewFile,BufRead *.hlut set filetype=hlut
" augroup END
augroup ch3t_ft
  au!
  au  BufNewFile,BufRead *.ch3t,*.cheat,*.hlut set filetype=ch3t
augroup END
" from: HTTPS://StackOverFlow.Com/questions/11666170/persistent-set-syntax-for-a-given-filetype
" Set the filetype based on the file's extension, overriding any 'filetype' that has already been set:
"au BufRead,BufNewFile *.html.twig set filetype=html
" Set the filetype based on the file's extension, but   only  if 'filetype'  has not already been set:
"au BufRead,BufNewFile *.html.twig  setfiletype html
