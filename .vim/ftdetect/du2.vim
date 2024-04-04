" NBTLH2du:This was derived from lrc.vim which fixed my LS_COLORS .rc files being detected as lyrics && colrd all red. XtNsionz .du && .2du OvrId ft conf;
" might l8r want 2 mk du sepR8 ft from du2 && EvN handl .2du dif from .du2 alsO;
" augroup du_ft
"   au!
"  "autocmd BufNewFile,BufRead *.lrc            set   syntax=lsclrz
"   autocmd BufNewFile,BufRead *.du             set filetype=du
" augroup END
augroup du2_ft
  au!
  autocmd BufNewFile,BufRead *.2du,*.du,*.du2,*.ls,*.u8,*.utf8,*.pal8,*.lut,*.f0nt,*.f0x set filetype=du2
augroup END
" from: HTTPS://StackOverFlow.Com/questions/11666170/persistent-set-syntax-for-a-given-filetype
" Set the filetype based on the file's extension, overriding any
"   'filetype' that has already been set
"au BufRead,BufNewFile *.html.twig set filetype=html
" Set the filetype based on the file's extension, but only if
"   'filetype'  has not already been set
"au BufRead,BufNewFile *.html.twig  setfiletype html
