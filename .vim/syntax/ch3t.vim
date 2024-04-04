" Vim syntax file
" Language          : ch3t, cheat, && hlut files (derived from du2, du, && 2du syntax)
" PreviousMaintainer: Bram Moolenaar <Bram@vim.org>
" PreviousRevision#?: 2021 May 01
" Present_Maintainer: Pip  Stuart    <Pip@CPAN.Org>
" L8stD8d_Revision#0: 2023 Dec 06
" d8VS='NC6LFINE'; 2du:/add/path/detection && Blue colr subdirz,Dtect several common date 4m@z && let thM contain the (Da|Mo)Nam&&YrJK,thN tImez&&zOnez,
"   plan 2 stRt Using my 2.du (&& othr .ls or .u8 fIlz aftr dupng && customIzng syntax fIlz 4 Ech of thM 2) for columnz wi pRtial complEtion [-+*# ] prEfixz,
"   mk prEfixd fieldz Abl2 match @ ^ stRt nstd wi nO ms++ && apNded @ $ Nd wi nO me--;
if exists("b:current_syntax")
  finish  " quit when a (custom) syntax file was already loaded
en
sy  iskeyword @,48-57,.,_,192-255,-,$
sy    keyword ch3tOctl Octology Octl a8 b8 c8 d8 f8 g8 l8 m8 n8 o8 p8 r8 s8 t8 u8 v8 w8
sy    keyword ch3tTodo TODO 2du FIXME XXX                                                                      contained
sy    match   ch3tChar '\c\(char\(acter\)\?s\?\)'
sy    match   ch3tPara '\c\(paragraphs\?\)'
sy    match   ch3tSent '\c\(sentences\?\)'
sy    match   ch3tSect '\c\(sections\?\)'
sy    match   ch3tLine '\c\(lines\?\)'
sy    match   ch3tWord '\c\(words\?\)'
sy    match   ch3tPlus '+'
sy    match   ch3t4wdS '/'
sy    match   ch3tBakS '\\'
sy    match   ch3tSKpP '\\%'
sy    match   ch3tSKpC '\\\w'
sy    match   ch3tNeg8 '[-^]'                                                                                  contained
sy    match   ch3tQuot "['`]"
sy    match   ch3tCmaP '[,#]'
sy    match   ch3tDPrz '[()]'                                                                                  contained
sy    match   ch3tPrnz '[()]'                                                                                  contained
sy    match   ch3tAngz '[<>]'                                                                                  contained
sy    match   ch3tQBCP '[?!:|*@]'
sy    match   ch3tDTEA '[-~=&^$]'
sy    match   ch3tNCma '[^,}]\?,[^,}]\?'                                                                       contained contains=ch3tCmaP
sy    match   ch3tCRng '[^\[-]\?-[^\]-]\?'                                                                     contained contains=ch3tDTEA
sy    match   ch3tPrns '([^()\\]*)'                                                                                      contains=ch3tAngl,ch3tSent,ch3tCmaP,ch3tQBCP,ch3tDTEA,ch3tNeg8,ch3tPrnz
sy    match   ch3tBrac '{[^{}\\]*}'                                                                                      contains=ch3tBCma,ch3tPara
sy    match   ch3tBCma '{-\?[^,}]\?,\?[^,}]\?}'                                                                          contains=ch3tNeg8,ch3tNCma
sy    match   ch3tAngl      '<[^<> ]*>'                                                                        contained contains=ch3tType,ch3tCorG
sy    match   ch3tSKpA '\\_\?<[^<>]\+>'                                                                        contained contains=ch3tAngl,ch3tAngz
sy    match   ch3tDblP '\(\\[%z_]\)\?([^()]*([^)]*)[^)]*)'                                                               contains=ch3tQBCP,ch3tDTEA,ch3tPrns,ch3tDPrz
sy    match   ch3tCorG '\c\(\<\|\w\|\s\)\@<=[<(]\?\(char\(acter\)\?\||\|group\|str\(ing\)\?\|seq\)\+s\?[)>]\?'           contains=ch3tQBCP,ch3tAngz
sy    match   ch3tType '\c<\(enter\|erase\|esc\|cr\|lf\|bs\|sp\?\(ace\)\?\|ht\|tab\|return\|file\|cmd\|hjkl\|dir\)>'     contains=ch3tDTEA,ch3tAngz
sy    match   ch3tRgEx '[/?]\\\?_\?<\([^<>]\|<>\)\+>'                                                                    contains=ch3tCorG,ch3tAngz,ch3t4wdS,ch3tBakS
sy    match   ch3tPndA '\<#\\\?<[^<>]\+>'                                                                                contains=ch3tSKpA,ch3tCmaP
sy    match   ch3tPndL '\<#\^\?\(\w+[,=]\)\+'                                                                            contains=ch3tQBCP,ch3tDTEA
sy    match   ch3tKeyz '\(^ \|  \)[^=]\{1,16}='                                                                          contains=ch3tRgEx,ch3tCmaP,ch3tDTEA,ch3tType,ch3tSKpP,ch3tCorG
sy    match   ch3tSKpU '\(^\s\+\\_<[^>]*>\)'                                                                             contains=ch3tAngz,ch3tSKpC
sy    match   ch3tHedr '\(^\|;\@<=\s\?\)\w\+[^:]*\>'                                                                     contains=ch3tStrD,ch3tQBCP,ch3tChar,ch3tSent,ch3tSect,ch3tPara,ch3tLine,ch3tWord
sy    match   ch3tBrkt '\[\(\[\|\]\)\]\|\[\(\^\|\w-\w\|\\\w\|[^\[\]]\)\+\]'                                              contains=ch3tNeg8,ch3tCRng,ch3tSKpC,ch3tSect,ch3tType
sy    match   ch3tpHAS                                                       "[0-9A-Za-x]\{2}"he=s+2,ms=s+1    contained
sy    match   ch3tsCND                                                       "[0-9A-Za-x]\{3}"he=s+2,ms=s+1    contained contains=ch3tpHAS
sy    match   ch3tmNUT                                                       "[0-9A-Za-x]\{4}"he=s+2,ms=s+1    contained contains=ch3tsCND
sy    match   ch3thOUR                                               "[0-9A-Z][0-9A-Za-x]\{4}"he=s+2,ms=s+1    contained contains=ch3tmNUT
sy    match   ch3tzONE                                 "[1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=ch3thOUR
sy    match   ch3tDaay                         "[1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=ch3tzONE
sy    match   ch3tMnth            "[0-9._a-zA-Z][1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=ch3tDaay
sy    match   ch3tYear            "[0-9._a-zA-Z][1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+1         contained contains=ch3tMnth
sy    match   ch3td8                 "\<[0-9A-Z][1-9A-C][1-9A-V]\>"                                                      contains=ch3tYear
sy    match   ch3td8            "\<[0-9._a-zA-Z][1-9A-C][1-9A-V][0-9A-Z][0-9A-Za-x]\{4}\>"                               contains=ch3tYear
sy    match   ch3tDNam "\<\([Ss]un\|[Tt]h\?ue\?r\?s\?\|[Ww]ed\(nes\)\?\|[Ff]ri\|[Ss]h\?a[bt]\(bath\?\|bos\|ur\)\?\)\([Dd]ay\)\?\>"
sy    match   ch3tDNam "\<[Mm]on\([Dd]ay\)\?\>"
sy    match   ch3tMNam "\<[Mm]onth\>" " sepR8 Month from Monday abov
sy    match   ch3tMNam "\<\(\(Jan\|Febr\?\)\%(uary\)\?\|Ma[ry]\%(ch\)\?\|Apr\%(il\)\?\|Ju[nl][ey]\?\)\>"
sy    match   ch3tMNam "\<\(Aug\%(ust\)\?\|Oct\%(ober\)\?\|\(Sept\?\|Nov\|Dec\)\%(ember\)\?\)\>"
sy    match   ch3tYrJK     "\<\(\(18\|19\|20\|21\)\d\d\|[Yy]ear\)\>"
sy    match   ch3tPath           "/\k[^ \t,;:~=@&?!|\[<({})>\]/]*"ms=s+1                                       contained
sy    match   ch3tSPth           "/\k[^ \t,;:~=@&?!|\[<({})>\]/]*"                                                       contains=ch3tPath
sy    match   ch3tPthS    "\<\(\~\|\k[^ \t,;:~=@&?!|\[<({})>\]/]*\)/[^ \t,;:~=@&?!|\[<({})>\]]\+"                        contains=ch3tSPth
sy    match   ch3tDNum                              "\(\([-/ ]\)\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"ms=s+1  contained
sy    match   ch3tMNum                              "\(\([-/ ]\)\([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\2\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"ms=s+1 contained contains=ch3tDNum,ch3tMNam
sy    match   ch3tMTmp     "\<\(\%(18\|19\|20\|21\)\d\d\([-/ ]\)\([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\2\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"ms=s+4 contained contains=ch3tMNum,ch3tType,ch3t4wdS
sy    match   ch3tYMDz     "\<\(\%(18\|19\|20\|21\)\d\d\([-/ ]\)\([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\2\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"                 contains=ch3tMTmp,ch3tYrJK
sy    match   ch3tCmnt  +^"[^";]*\("\|;\)\?+                      contains=@Spell,ch3tOctl,ch3tTodo,ch3t4wdS,ch3tBakS,ch3tType,ch3tPrns,ch3td8,ch3tYMDz,ch3tYrJK,ch3tMNam,ch3tDNam,ch3tPthS,ch3tStrS,ch3tQuot
sy    match   ch3tCmnt +\s"[^";]*\("\|;\)\?+hs=s+1                contains=@Spell,ch3tOctl,ch3tTodo,ch3t4wdS,ch3tBakS,ch3tType,ch3tPrns,ch3td8,ch3tYMDz,ch3tYrJK,ch3tMNam,ch3tDNam,ch3tPthS,ch3tStrS,ch3tQuot
sy    region  ch3tStrS start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline contains=@Spell,ch3tOctl,ch3tTodo,ch3t4wdS,ch3tBakS,ch3tType,ch3tPrns,ch3td8,ch3tYMDz,ch3tYrJK,ch3tMNam,ch3tDNam,ch3tPthS
sy    region  ch3tStrD start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline contains=@Spell,ch3tOctl,ch3tTodo,ch3t4wdS,ch3tBakS,ch3tType,ch3tPrns,ch3td8,ch3tYMDz,ch3tYrJK,ch3tMNam,ch3tDNam,ch3tPthS
" below definez default highlighting (only used when an item doesn't have highlighting yet);
" Octl User4 is Gb lIk some Type Gk if !171, Octl kywrdz were Identifier hEre but mAB chngng 2 G sinc most R bin XeQtablz && mk sNse 2 shO lIk .lrc XeQt fIlz;
hi  def link ch3tTodo Todo
hi  def link ch3tType Type
hi  def link ch3tQuot DiffAdd
" B User6 NonText 4 Path BlO? SpecialKey BrIt Blu 2much lIk Cyan
hi  def link ch3tPthS NonText
hi  def link ch3tSPth Operator
hi  def link ch3tPath User6
hi  def link ch3tChar User5
hi  def link ch3tPara User8
hi  def link ch3tSent User6
hi  def link ch3tSect User2
hi  def link ch3tLine User7
hi  def link ch3tWord Special
hi  def link ch3t4wdS User2
hi  def link ch3tBakS Label
hi  def link ch3tNeg8 User1
hi  def link ch3tSKpP Type
hi  def link ch3tSKpC User8
hi  def link ch3tQBCP User2
hi  def link ch3tDTEA User4
hi  def link ch3tBCma Label
hi  def link ch3tNCma User6
hi  def link ch3tCmaP User2
hi  def link ch3tCRng User3
hi  def link ch3tBrac User6
hi  def link ch3tAngl User1
hi  def link ch3tAngz NonText
hi  def link ch3tDblP LineNr
hi  def link ch3tDPrz User1
hi  def link ch3tPrnz User8
hi  def link ch3tPrns User5
hi  def link ch3tSKpA User7
hi  def link ch3tCorG User5
hi  def link ch3tType User9
hi  def link ch3tRgEx User1
hi  def link ch3tPndA Comment
hi  def link ch3tPndL SpecialKey
hi  def link ch3tHedr Identifier
hi  def link ch3tKeyz Keyword
hi  def link ch3tSKpU User1
hi  def link ch3tBrkt String
hi  def link ch3tPlus Error
" Cmnt was NonText or SpecialKey B but mkng C Comment sinc alreD 2 acustomd 2 Xpect && Dtect th@; StrD was Constant but tryng NonText now nstd 2CifI lIkbetr?;
hi  def link ch3tCmnt Constant
hi  def link ch3tStrS String
hi  def link ch3tStrD NonText
hi  def link ch3tOctl User4
"hi def link ch3tYMDz User1
hi  def link ch3tYMDz DiffDelete
hi  def link ch3tMTmp User6
hi  def link ch3tMNum User2
hi  def link ch3tDNum User3
hi  def link ch3tYrJK User1
hi  def link ch3tMNam User2
hi  def link ch3tDNam User3
hi  def link ch3tYear User1
hi  def link ch3tMnth User2
hi  def link ch3tDaay User3
hi  def link ch3tzONE User4
hi  def link ch3thOUR User5
hi  def link ch3tmNUT User6
hi  def link ch3tsCND User7
hi  def link ch3tpHAS User8
hi  def link ch3td8   IncSearch
" mAB abov just if exists("User1-8") el BlO?
"hi def link ch3tYear DiffText
"hi def link ch3tMnth Search
"hi def link ch3tDaay Operator
"hi def link ch3tzONE Type
"hi def link ch3thOUR Comment
"hi def link ch3tmNUT NonText
"hi def link ch3tsCND Constant
"hi def link ch3tpHAS DiffChange
" :N orK   Normal      Y Operator   F:BB Label          :R  VertSplit     :B     ModeMsg  b:RB DiffText ;  chng abov linkz 2 cause dif colrz in .du fIl, yay!;
" 121orGk  Type        B NonText      Y        LineNr  b:K  Visual       F:YB    MoreMsg  b:b  DiffAdd   
"      C   Comment     W Special    F:YU CursorLineNr    Wr   Error        CK Folded      b:c  DiffDelete
"      CkB PreProc     M Constant     KO    Search       W    ErrorMsg     CK FoldColumn    kO Todo      
"    F:CB  Identifier  Y Statement   :R  IncSearch       C  WarningMsg   b:P  DiffChange    w  cIf0     ;  whoa! nO String DfInd in dk (probably just P);
let b:current_syntax = "ch3t"
