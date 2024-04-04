" Vim syntax file
" Language          : subs, sub, && CC files (derived from my du2 syntax, which itself came from generic conf file syntax);
" PreviousMaintainer: Bram Moolenaar <Bram@vim.org>
" PreviousRevision#?: 2021 May 01
" Present_Maintainer: Pip  Stuart    <Pip@CPAN.Org>
" L8--est_Revision#0: 2023 Dec 15
" d8VS='NCFL5UBS'; 2du:add new {dur8} time-stamp Dtection && colring,figure out what else can be matched && highlighted for visibility in my subtitle files;
if exists("b:current_syntax")
  finish  " quit when a (custom) syntax file was already loaded
en
sy  iskeyword @,48-57,.,_,192-255,-,$
sy    keyword subsOctl Octology Octl a8 b8 c8 d8 f8 g8 l8 m8 n8 o8 p8 r8 s8 t8 u8 v8 w8
sy    keyword subsTodo TODO 2du FIXME XXX                                                                      contained
"sy    match   subs4wdS "/"
sy    match   subsBakS "\\"
" following   subsStg0 (wich is just MpT space wi initial Dscription, B4 any action tAkN or progrS Bgun) && all progrS chars must prECd spAcez d8 YMD(zhmsp)?:
sy    match   subsStg1 "\(^\| \)\^\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
sy    match   subsStg2 "\(^\| \)\-\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
sy    match   subsStg3  "\(^\| \)+\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
sy    match   subsStg4 "\(^\| \)\*\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
sy    match   subsStg5  "\(^\| \)%\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
sy    match   subsStg6  "\(^\| \)$\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4
sy    match   subsStg7  "\(^\| \)#\s\+[0-9._a-zA-Z][1-9A-C][1-9A-V]"me=e-4                                     contained
sy    match   subsQuot "[\"'`]"
sy    match   subsDCSC "[.,;=]"
sy    match   subsType "[!@&|_]"
sy    match   subsPrns "[<{(\[\])}>]"
sy    match   subspHAS                                                       "[0-9A-Za-x]\{2}"he=s+2,ms=s+1    contained
sy    match   subssCND                                                       "[0-9A-Za-x]\{3}"he=s+2,ms=s+1    contained contains=subspHAS
sy    match   subsmNUT                                                       "[0-9A-Za-x]\{4}"he=s+2,ms=s+1    contained contains=subssCND
sy    match   subshOUR                                               "[0-9A-Z][0-9A-Za-x]\{4}"he=s+2,ms=s+1    contained contains=subsmNUT
sy    match   subszONE                                 "[1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=subshOUR
sy    match   subsDaay                         "[1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=subszONE
sy    match   subsMnth            "[0-9._a-zA-Z][1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+2,ms=s+1  contained contains=subsDaay
sy    match   subsYear            "[0-9._a-zA-Z][1-9A-C][1-9A-V]\(\>\|[0-9A-Z][0-9A-Za-x]\{4}\)"he=s+1         contained contains=subsMnth
sy    match   subsd8                 "\<[0-9A-Z][1-9A-C][1-9A-V]\>"                                                      contains=subsYear
sy    match   subsd8            "\<[0-9._a-zA-Z][1-9A-C][1-9A-V][0-9A-Z][0-9A-Za-x]\{4}\>"                               contains=subsYear
sy    match   subsDNam "\<\([Ss]un\|[Tt]h\?ue\?r\?s\?\|[Ww]ed\(nes\)\?\|[Ff]ri\|[Ss]h\?a[bt]\(bath\?\|bos\|ur\)\?\)\([Dd]ay\)\?\>"
sy    match   subsDNam "\<[Mm]on\([Dd]ay\)\?\>"
sy    match   subsMNam "\<[Mm]onth\>" " sepR8 Month from Monday abov
sy    match   subsMNam "\<\(\(Jan\|Febr\?\)\%(uary\)\?\|Ma[ry]\%(ch\)\?\|Apr\%(il\)\?\|Ju[nl][ey]\?\)\>"
sy    match   subsMNam "\<\(Aug\%(ust\)\?\|Oct\%(ober\)\?\|\(Sept\?\|Nov\|Dec\)\%(ember\)\?\)\>"
sy    match   subsYrJK     "\<\(\(18\|19\|20\|21\)\d\d\|[Yy]ear\)\>"
sy    match   subsPath           "/\k[^ \t,;:~=@&?!|\[<({})>\]/]*"ms=s+1                                       contained
sy    match   subsSPth           "/\k[^ \t,;:~=@&?!|\[<({})>\]/]*"                                                       contains=subsPath
sy    match   subsPthS    "\<\(\~\|\k[^ \t,;:~=@&?!|\[<({})>\]/]*\)/[^ \t,;:~=@&?!|\[<({})>\]]\+"                        contains=subsSPth
sy    match   subsDNum                              "\(\([-/ ]\)\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"ms=s+1  contained
sy    match   subsMNum                              "\(\([-/ ]\)\([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\2\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"ms=s+1 contained contains=subsDNum,subsMNam
sy    match   subsMTmp     "\<\(\%(18\|19\|20\|21\)\d\d\([-/ ]\)\([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\2\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"ms=s+4 contained contains=subsMNum,subsType,subs4wdS
sy    match   subsYMDz     "\<\(\%(18\|19\|20\|21\)\d\d\([-/ ]\)\([ 01]\?\d\|[JjFfMmAaSsOoNnDd][aepuco][nbrylgptvc][reyto]\?\%(uary\|ch\|il\|ust\|m\?ber\)\?\)\2\([ 0123]\?\%(1st\|2nd\|3rd\|[0-9]th\|\d\)\)\)\>"                 contains=subsMTmp,subsYrJK
sy    region  subsStrD start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline contains=@Spell,subsOctl,subsTodo,subs4wdS,subsBakS,subsDCSC,subsType,subsPrns,subsd8,subsYMDz,subsYrJK,subsMNam,subsDNam,subsPthS
sy    region  subsStrS start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline contains=@Spell,subsOctl,subsTodo,subs4wdS,subsBakS,subsDCSC,subsType,subsPrns,subsd8,subsYMDz,subsYrJK,subsMNam,subsDNam,subsPthS
sy    match   subsCmnt  "^#.*"                                    contains=@Spell,subsOctl,subsTodo,subs4wdS,subsBakS,subsDCSC,subsType,subsPrns,subsd8,subsYMDz,subsYrJK,subsMNam,subsDNam,subsPthS,subsStg7,subsStrD,subsStrS,subsQuot
sy    match   subsCmnt "\s#.*"hs=s+1                              contains=@Spell,subsOctl,subsTodo,subs4wdS,subsBakS,subsDCSC,subsType,subsPrns,subsd8,subsYMDz,subsYrJK,subsMNam,subsDNam,subsPthS,subsStg7,subsStrD,subsStrS,subsQuot
" above avoidz matching 'text#text', used in /etc/disktab && /etc/gettytab;
" below definez default highlighting (only used when an item doesn't have highlighting yet);
" Octl User4 is Gb lIk some Type Gk if !171, Octl kywrdz were Identifier hEre but mAB chngng 2 G sinc most R bin XeQtablz && mk sNse 2 shO lIk .lrc XeQt fIlz;
hi  def link subsTodo Todo
hi  def link subsType Type
hi  def link subsQuot DiffAdd
" B User6 NonText 4 Path BlO? SpecialKey BrIt Blu 2much lIk Cyan
hi  def link subsPthS NonText
hi  def link subsSPth Operator
hi  def link subsPath User6
hi  def link subs4wdS User2
hi  def link subsBakS Label
hi  def link subsDCSC WarningMsg
hi  def link subsPrns Statement
hi  def link subsStg1 User1
hi  def link subsStg2 User2
hi  def link subsStg3 User3
hi  def link subsStg4 User4
hi  def link subsStg5 User5
hi  def link subsStg6 User6
hi  def link subsStg7 User7
hi  def link subsOctl User4
"hi def link subsYMDz User1
hi  def link subsYMDz DiffDelete
hi  def link subsMTmp User6
hi  def link subsMNum User2
hi  def link subsDNum User3
hi  def link subsYrJK User1
hi  def link subsMNam User2
hi  def link subsDNam User3
hi  def link subsYear User1
hi  def link subsMnth User2
hi  def link subsDaay User3
hi  def link subszONE User4
hi  def link subshOUR User5
hi  def link subsmNUT User6
hi  def link subssCND User7
hi  def link subspHAS User8
hi  def link subsd8   IncSearch
" mAB abov just if exists("User1-8") el BlO?
"hi def link subsYear DiffText
"hi def link subsMnth Search
"hi def link subsDaay Operator
"hi def link subszONE Type
"hi def link subshOUR Comment
"hi def link subsmNUT NonText
"hi def link subssCND Constant
"hi def link subspHAS DiffChange
" Cmnt was NonText or SpecialKey B but mkng C Comment sinc alreD 2 acustomd 2 Xpect && Dtect th@; StrD was Constant but tryng NonText now nstd 2CifI lIkbetr?;
hi  def link subsCmnt Comment
hi  def link subsStrD NonText
hi  def link subsStrS String
" :N orK   Normal      Y Operator   F:BB Label          :R  VertSplit     :B     ModeMsg  b:RB DiffText ;  chng abov linkz 2 cause dif colrz in .du fIl, yay!;
" 121orGk  Type        B NonText      Y        LineNr  b:K  Visual       F:YB    MoreMsg  b:b  DiffAdd   
"      C   Comment     W Special    F:YU CursorLineNr    Wr   Error        CK Folded      b:c  DiffDelete
"      CkB PreProc     M Constant     KO    Search       W    ErrorMsg     CK FoldColumn    kO Todo      
"    F:CB  Identifier  Y Statement   :R  IncSearch       C  WarningMsg   b:P  DiffChange    w  cIf0     ;  whoa! nO String DfInd in dk (probably just P);
let b:current_syntax = "subs"
