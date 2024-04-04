" I don't like my LS_COLORS .rc files being detected as lyrics && colr all red;
augroup lrc_ft
  au!
 "autocmd BufNewFile,BufRead *.lrc    set   syntax=lsclrz
  autocmd BufNewFile,BufRead *.lrc    set filetype=lrc
augroup END
augroup lsrc_ft
  au!
  autocmd BufNewFile,BufRead *.lsrc   set filetype=dircolors
augroup END
" from: HTTPS://StackOverFlow.Com/questions/11666170/persistent-set-syntax-for-a-given-filetype
" Set the filetype based on the file's extension, overriding any
"   'filetype' that has already been set
"au BufRead,BufNewFile *.html.twig set filetype=html
" Set the filetype based on the file's extension, but only if
"   'filetype'  has not already been set
"au BufRead,BufNewFile *.html.twig  setfiletype html
