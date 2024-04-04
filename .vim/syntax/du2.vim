" Vim syntax file
" Language          : du2, du, && 2du files (derived from generic conf file syntax)
" PreviousMaintainer: Bram Moolenaar <Bram@vim.org>
" PreviousRevision#?: 2021 May 01
" Present_Maintainer: Pip  Stuart    <Pip@CPAN.Org>
" L8--est_Revision#0: 2023 Nov 29
" d8VS='O2KL0j1k'; 2du:Dtect more common dateTimeZone 4m@z && let thM contain the (Da|Mo)Nam&&YrJK,thN tImez&&zOnez, colr sub-fEldz of URLz && UnderCurl thM,
"   plan 2 stRt Using my 2.du (&& othr .ls or .u8 fIlz aftr dupng && customIzng syntax fIlz 4 Ech of thM 2) for columnz wi pRtial complEtion [-+*# ] prEfixz,
"   considr mkng prEfixd fEldz stAg-colrd rEgionz nstd of just prEfix char colr;
if exists("b:current_syntax")
  finish  " quit when a (custom) syntax file was already loaded
en
sy  iskeyword @,48-57,.,_,192-255,-,$
sy    keyword du2Octl Octology Octl a8 b8 bfr8 c8 ckm8 d8 dur8 f8 f0nt g8 h8 k8 l8 m8 n8 o8 p8 pal8 r8 s8 t8 u8 v8 w8  lodH sumb ftst tstc tsgr dic g3 8plc
sy    keyword du2Todo TODO 2du FIXME XXX                                                                      contained
sy    match   du24wdS "/"                                                                                     contained
sy    match   du2BakS "\\"
" following   du2Stg0 (wich is just MpT space wi initial Dscription, B4 any action tAkN or progrS Bgun) && all progrS chars must prECd spAcez d8 YMD(zhmsp)?:
"sy    match   du2Stg1 "\(^\| \)\^\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
"sy    match   du2Stg2 "\(^\| \)\-\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
"sy    match   du2Stg3  "\(^\| \)+\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
"sy    match   du2Stg4 "\(^\| \)\*\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
"sy    match   du2Stg5  "\(^\| \)%\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
"sy    match   du2Stg6  "\(^\| \)$\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
"sy    match   du2Stg7  "\(^\| \)#\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4                                     contained
"sy    region  du2Stg1 start="\(^\| \)\^\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V]" skip=+\\\\\|\\;+ end=+;$\|;\s+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg2,du2Stg3,du2Stg4,du2Stg5,du2Stg6,du2Stg7
"sy    region  du2Stg2 start="\(^\| \)\-\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V]" skip=+\\\\\|\\;+ end=+;$\|;\s+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg3,du2Stg4,du2Stg5,du2Stg6,du2Stg7
"sy    region  du2Stg3 start="\(^\|\s\)+\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V]" skip=+\\\\\|\\;+ end=+;$\|;\s+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg4,du2Stg5,du2Stg6,du2Stg7
"sy    region  du2Stg4 start="\(^\| \)\*\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V]" skip=+\\\\\|\\;+ end=+;$\|;\s+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg5,du2Stg6,du2Stg7
"sy    region  du2Stg5 start="\(^\|\s\)%\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V]" skip=+\\\\\|\\;+ end=+;$\|;\s+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg4,du2Stg6,du2Stg7
"sy    region  du2Stg6 start="\(^\|\s\)$\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V]" skip=+\\\\\|\\;+ end=+;$\|;\s+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg4,du2Stg5,du2Stg7
"sy    region  du2Stg7 start="\(^\|\s\)#\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V]" skip=+\\\\\|\\;+ end=+;$\|;\s+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg4,du2Stg5,du2Stg6 contained
sy    match   du2Stg1 "\(^\| \)\^\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V][^;]*;" contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg2,du2Stg3,du2Stg4,du2Stg5,du2Stg6,du2Stg7
sy    match   du2Stg2 "\(^\| \)\-\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V][^;]*;" contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg3,du2Stg4,du2Stg5,du2Stg6,du2Stg7
sy    match   du2Stg3 "\(^\|\s\)+\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V][^;]*;" contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg4,du2Stg5,du2Stg6,du2Stg7
sy    match   du2Stg4 "\(^\| \)\*\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V][^;]*;" contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg5,du2Stg6,du2Stg7
sy    match   du2Stg5 "\(^\|\s\)%\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V][^;]*;" contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg4,du2Stg6,du2Stg7
sy    match   du2Stg6 "\(^\|\s\)$\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V][^;]*;" contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg4,du2Stg5,du2Stg7
sy    match   du2Stg7 "\(^\|\s\)#\(\s\+\|[-+*%$#\^]\)[0-9._a-zA-Z][1-9A-C][1-9A-V][^;]*;" contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg1,du2Stg2,du2Stg3,du2Stg4,du2Stg5,du2Stg6 contained
sy    match   du2Dash "-"                                                                                     contained
sy    match   du2Quot "[\"'`]"
sy    match   du2DCSC "[.,;=]"
sy    match   du2Type "[!@&|_]"
sy    match   du2Prns "[<{(\[\])}>]"
sy    match   du2Path           "/\k[^ \t,;:~=@&?!|\[<({})>\]/]*"ms=s+1                                       contained
sy    match   du2SPth           "/\k[^ \t,;:~=@&?!|\[<({})>\]/]*"                                                       contains=du2Path
sy    match   du2PthS    "\<\(\~\|\k[^ \t,;:~=@&?!|\[<({})>\]/]*\)/[^ \t,;:~=@&?!|\[<({})>\]]\+"                        contains=du2SPth
sy    match   du2PDoc "\<pdoc"
sy    match   du2Perl "[Pp]erl"
sy    match   du2Curs "[Cc]urse\?s\?"
sy    match   du2DNam "\<\([Ss]un\|[Tt]h\?ue\?r\?s\?\|[Ww]ed\(nes\)\?\|[Ff]ri\|[Ss]h\?a[bt]\(bath\?\|bos\|ur\)\?\)\([Dd]ay\)\?\>"
sy    match   du2DNam "\<\([Mm]on\([Dd]ay\)\?\|[Dd]ay\)\>"
sy    match   du2MNam "\<[Mm]onth\>" " sepR8 Month from Monday abov
sy    match   du2MNam "\<\(\(Jan\|Febr\?\)\%(uary\)\?\|Ma\%(r\%(ch\)\?\|y\)\|Apr\%(il\)\?\|Ju\%(ne\?\|ly\?\)\)\>"
sy    match   du2MNam "\<\(Aug\%(ust\)\?\|Oct\%(ober\)\?\|\(Sept\?\|Nov\|Dec\)\%(ember\)\?\)\>"
sy    match   du2YrJK     "\<\(\(18\|19\|20\|21\)\d\d\|[Yy]ear\)\>"
sy    match   du2DNum                                 "\([-/ ]\)\%([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\>"ms=s+1  contained
sy    match   du2Dsh2                                 "\([-/ ]\)\%([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\>"        contained contains=du2DNum
sy    match   du2MNum                                 "\([-/ ]\)\%([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto.]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\1\%([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\>"ms=s+1   contained contains=du2Dsh2,du2MNam
sy    match   du2MTmp     "\<\%(\%(18\|19\|20\|21\)\d\d\([-/ ]\)\%([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto.]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\1\%([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"ms=s+4 contained contains=du2MNum
sy    match   du2YMDz     "\<\%(\%(18\|19\|20\|21\)\d\d\([-/ ]\)\%([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto.]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\1\%([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"                 contains=du2MTmp
",du24wdS,du2Dash   # these screwed the number field detection up so I just had to sepR8 the dash|slash matches to get Special White then Month && Day within;
sy    match   du28ion   "\(ion\)\(ship\)\?[sz]\?\>"                                                           contained
sy    match   du28suf   "\([adlr]\|ant\|on\|or\|um\|us\|ure\|ful\|ial\|ing\|ile\|ive\|ious\|ron\|rix\|riot\|rician\|riarch\)[sz]\?\>" contained
sy    match   du28let                                     "8[0-9a-zA-Z]\{-}\>"                                contained contains=du28ion,du28suf
sy    match   du28wpl                             "[a-zA-Z]8[0-9a-zA-Z]\{-}\>"                                contained contains=du28let
sy    match   du28wrd            "\<[0-9a-zA-Z]\{-}[a-zA-Z]8[0-9a-zA-Z]\{-}\>"                                          contains=du28wpl
sy    match   du2PMod "\.[Ppt][Llmo]\?[d6]\?\>"
sy    match   du2pHAS                                                       "[0-9A-Za-x]\{2}"he=s+2,ms=s+1    contained
sy    match   du2sCND                                                       "[0-9A-Za-x]\{3}"he=s+2,ms=s+1    contained contains=du2pHAS
sy    match   du2mNUT                                                       "[0-9A-Za-x]\{4}"he=s+2,ms=s+1    contained contains=du2sCND
sy    match   du2hOUR                                               "[0-9A-Z][0-9A-Za-x]\{4}"he=s+2,ms=s+1    contained contains=du2mNUT
sy    match   du2zONE                                 "[1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=du2hOUR
sy    match   du2Daay                         "[1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=du2zONE
sy    match   du2Mnth            "[0-9._a-zA-Z][1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=du2Daay
sy    match   du2Year            "[0-9._a-zA-Z][1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+1         contained contains=du2Mnth
sy    match   du2d8            "\<[0-9._a-zA-Z][1-9A-C][1-9A-V]\>"                                                      contains=du2Year
sy    match   du2d8            "\<[0-9._a-zA-Z][1-9A-C][1-9A-V][0-9A-Z][0-9A-Za-x]\{4}\>"                               contains=du2Year
"/usr/share/vim/vim90/syntax/asciidoc.vim:syn match asciidocURL /\\\@<!\<\(http\|https\|ftp\|file\|irc\):\/\/[^| \t]*\(\w\|\/\)/
sy    match   du2URLz "\\\@<!\<\c\(https\?\|ftp\|file\|irc\|git\)://[^| \t]*\(\w\|/\)"
sy    region  du2StrD start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS
sy    region  du2StrS start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS
sy    match   du2Cmnt  "^#.*"                                    contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg7,du2StrD,du2StrS,du2Quot
sy    match   du2Cmnt "\s#.*"hs=s+1                              contains=@Spell,du2Octl,du2Todo,du2URLz,du24wdS,du2BakS,du2DCSC,du2Type,du2Prns,du2d8,du2YMDz,du2YrJK,du2MNam,du2DNam,du2PthS,du2Stg7,du2StrD,du2StrS,du2Quot
" above avoidz matching 'text#text', used in /etc/disktab && /etc/gettytab;
" below definez default highlighting (only used when an item doesn't have highlighting yet);
" Octl User4 is Gb lIk some Type Gk if !171, Octl kywrdz were Identifier hEre but mAB chngng 2 G sinc most R bin XeQtablz && mk sNse 2 shO lIk .lrc XeQt fIlz;
hi  def link du2Todo Todo
hi  def link du2Type Type
hi  def link du2Quot DiffAdd
" B User6 NonText 4 Path BlO? SpecialKey BrIt Blu 2much lIk Cyan
hi  def link du2PthS NonText
hi  def link du2SPth Operator
hi  def link du2Path User6
hi  def link du24wdS User4
hi  def link du2BakS Label
hi  def link du2DCSC WarningMsg
hi  def link du2Prns Statement
hi  def link du2Stg1 User1
hi  def link du2Stg2 User2
hi  def link du2Stg3 User3
hi  def link du2Stg4 User4
hi  def link du2Stg5 User5
hi  def link du2Stg6 User6
hi  def link du2Stg7 User7
hi  def link du2Octl User4
hi  def link du2YMDz User1
"hi def link du2YMDz DiffDelete
hi  def link du2Dash Special
hi  def link du2Dsh2 Special
hi  def link du2URLz User6
hi  def link du2MTmp Special
hi  def link du2MNum User2
hi  def link du2DNum User3
hi  def link du2YrJK User1
hi  def link du2MNam User2
hi  def link du2DNam User3
hi  def link du2Year User1
hi  def link du2Mnth User2
hi  def link du2Daay User3
hi  def link du2zONE User4
hi  def link du2hOUR User5
hi  def link du2mNUT User6
hi  def link du2sCND User7
hi  def link du2pHAS User8
hi  def link du2d8   IncSearch
hi  def link du28ion User6
hi  def link du28suf User5
hi  def link du28let User4
hi  def link du28wpl User3
hi  def link du28wrd Constant
hi  def link du2PDoc User8
hi  def link du2PMod User4
hi  def link du2Perl User7
hi  def link du2Curs User5
" mAB abov just if exists("User1-8") el BlO?
"hi def link du2Year DiffText
"hi def link du2Mnth Search
"hi def link du2Daay Operator
"hi def link du2zONE Type
"hi def link du2hOUR Comment
"hi def link du2mNUT NonText
"hi def link du2sCND Constant
"hi def link du2pHAS DiffChange
" Cmnt was NonText or SpecialKey B but mkng C Comment sinc alreD 2 acustomd 2 Xpect && Dtect th@; StrD was Constant but tryng NonText now nstd 2CifI lIkbetr?;
hi  def link du2Cmnt Comment
hi  def link du2StrD NonText
hi  def link du2StrS String
" :N orK   Normal      Y Operator   F:BB Label          :R  VertSplit     :B     ModeMsg  b:RB DiffText ;  chng abov linkz 2 cause dif colrz in .du fIl, yay!;
" 121orGk  Type        B NonText      Y        LineNr  b:K  Visual       F:YB    MoreMsg  b:b  DiffAdd   
"      C   Comment     W Special    F:YU CursorLineNr    Wr   Error        CK Folded      b:c  DiffDelete
"      CkB PreProc     M Constant     KO    Search       W    ErrorMsg     CK FoldColumn    kO Todo      
"    F:CB  Identifier  Y Statement   :R  IncSearch       C  WarningMsg   b:P  DiffChange    w  cIf0     ;  whoa! nO String DfInd in dk (probably just P);
let b:current_syntax = "du2"
