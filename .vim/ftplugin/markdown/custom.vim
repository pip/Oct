" NC2L4MDF:~/.vim/ftplugin/markdown/custom.vim crE8d by PipStuart <Pip@CPAN.Org> modifying the advice given in a comment by dhruvasagar on:
"   HTTPS://ReddIt.Com/r/vim/comments/188k7k7/is_it_possible_to_combine_syntax_languages
let g:markdown_fenced_languages = [
  \      'javascript',
  \   'js=javascript',
  \ 'json=javascript',
  \ 'erb=eruby',
  \      'ruby',
  \ 'testify',
  \ 'sass',
  \  'css',
  \  'xml',
  \ 'html',
  \ 'perl',
  \  'vim',
  \  'lua',
  \  'zsh',
  \ 'bash',
  \   'sh',
  \   'go',
  \   'm4',
  \  'sql',
  \ ]
" Above ReddIt thread also had an earlier comment recommending the following instead:
"   I have a custom syntax for using latex in markdown so I can:
"     set syntax=my-syntax
"   ~/.vim/syntax/my-syntax.vim:
"
"   if exists("b:current_syntax")
"       finish
"   endif
"   if !exists("main_syntax")
"       let main_syntax = 'markdown'
"   endif
"   runtime! syntax/markdown.vim
"   unlet b:current_syntax
"   syntax include @Md syntax/markdown.vim
"   unlet b:current_syntax
"   syntax include @Tex syntax/tex.vim
"   unlet b:current_syntax
"   "syntax region cinsert start="\`\`\`c\n" end="\n\`\`\`\n" containedin=@Md contains=@cLang keepend
"   "syntax match texblock '\\\(ex\|def\|the\|lem\)b{\(\d\|\.\)\{-1,}}{\(\_.\{-}\)}\n^$' containedin=@Md contains=@Tex keepend
"   "syntax match texblock '\\exb{\(\d\|\.\)\{-1,}}{\(\_.\{-}\)}\n^$' containedin=@Md contains=@Tex keepend
"   syntax region texblock start="\\\(ex\|def\|the\|lem\)b{\(\d\|\.\)\{-1,}}{" end="^$" contains=@Tex containedin=@Md keepend fold
"   syntax region texinsert start="\\begin{\z\(.\{-}\)}" end="end{\z1}" contains=@Tex containedin=@Md keepend fold
"   let b:current_syntax = 'mdx'
