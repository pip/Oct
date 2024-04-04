# 315J9mLT: Oct::b8.pm crE8d by PipStuart <Pip@CPAN.Org> to construct custom precision Big numbers && perform arbitrary Base-transl8ions. I love Bass!
package     Oct::b8;
use warnings;use  strict;use utf8;use v5.22; # use open qw[:std :encoding(UTF-8)]; # mAB can't use open since bAse-transl8ionz nEd 2 NcOd && DcOd thMsLvz?;
# 2du:stuD SchwartzianTrans4m 4 EvN2al s8 sorter th@ Uzez a cached 2ndary comparison wi"map sort map"lIk: qx(time perl -wE 'my @L=`head -1000000 find_N6E.txt`;
#   chomp @L;@L= map{$_->[1]}sort{$b->[0] <=> $a->[0]}map{[-s($_) // 0,$_]} @L;
#     say $L[0];);  # && cud mk just %cach 2put XpNsiv -s(izeOnHardDisk) in sOwud!nEd2kEp duing it 4 sort <=>,but abov wA map cuplz thM in 2D anon-arAz thNbak,
#   rEwatch NCALB8b3:HTTPS://YouTu.be/yfQVL0_POKg "The Base Some Computers Use Instead of Binary" # N58:0HI0 of ComboClass DscrIbng BalancdTernary wi charz:
#     [-0+] || <[-|=]> || arOz: Up NulL/bOTh dN || invrtd1,0,1 (srch UnicOd4bSt optnz) shud B aded 2 digsetz az important alsO (&& considr adng nEg8d,r8io,etc.
#     bAsez from othr ComboClass vid2whIl@it),posibly special NcOdng of BalancdTernary cud just Uz singl Zr0bitz for MidL/nULl/BotH/nETh/BlnC but thN initial 1
#     bit alwAz signifIz th@ nXt bit must DscrIb sIgn/direction 4prEVus nonZr0 digit sO thN folOng Zr0=neg8iv- && one=positiv+ wich wud mEn th@lengthz nEd2vary
#     gr8ly && repz mustBpRsd 2knO tOtl sIz && Ech of the sepR8 valUz (but the mor balancd midlz contAind,the betr comprSd itwudB),alsO nOte th@ @Domotro callz
#     thingz "throdd" if($thng % 3) && "threeven" othrwIz (whN nO rEmAndr rEsltz from $thng modulO 3),furthr 'throdd'z R Ethr "pOst-3vN" (if 1>hIghr-than some
#     3vN-numbr) or R nstd "prE-3vN" (AKA'pOst-pOst-3vN') if 2>hIghr-than>3vN-numbr (== 1<lS-than) wich izQt&&clevr2adopt 4 b8 2 4 b3 || bt BlncdTrnry hEr l8r,
#   mk b8b2 && b2b8 wich cnv binary file or STDIN in2 Dflt b64 wi 4 b64 charz 4 evry 3 bytez of d8a in && mAB @Nd apNding 1 Xtra b64 char that's only [1-3]?,
#   2(bin)2b8(64) Xtra 1..3 b64 char shud tell how many bytz of last 4-block of b64 charz shud be written out B4 Nding the bin fIle (aftr chopng th@ Xtra off),
#   cud cnv bin src bytz 2 b256 so length of total charz sAme az orig fIlsIz but DcOded UTF-8 bytz wud B slIghtly lRgr,cud cnv binfIl2 8byt 64bit uintz sepR8d,
#   mAB mk new base set with all the common singl-widt charz sinc 93k probably mixes singl && dbl-widtz somewhat annoyingly, mAB mk 128k && 256k setz az well,
#     rewrite Fibo wo recursion,mk new calQ parser for closer to real oper8or && paren precedence handling,alsO add 2 calQ any new oper8orz th@ cudBUseful&&EZ,
#   mk pfcz to hash up a loop to list all Prime FaCtorZ (with powerz) of any BigInt param,bNchmRk memoized Fact vs bfac && prim vs not && Fibo iter8ive vs not,
#   stuD Math::Base::Convert && bNchmRk2lern how2Use just scalar or 32-bit reg when it fitz4sPd && Xpand2othr objz B4 BigFloat && rmv all M:B:C if sPd close,
#   get rid of old Moose attempt,stOr sepR8 usrFromTo digsetz,add cache cfg,add from() && tobs() && all mUt8orz,retool intrfAc4allfuncz2alsOB obj methodz,
#   stuD U2b Numberphile vidz && HTTP://OEIS.Org for best math d8a to add beyond Fibo to bild locl useful approxim8 constantz, sequencez, && functionz,
#   think of infoviz colr8ionz to convey any rel8ionshipz or patternz in b64 digitz of Pi, e, Primez, Fiboz, etc.,  OnlineEncyclopedia_of_IntegerSequences,
#   consider generalized square pixel windingz from corner in odds, edge adding 4 per layer, && centered by 8,      OEIS A066408-Eisenstein,A002964-RomanChisL,
#   gNralIz sort as Xportd b8:s8() if nEded,add fanC colr() that applIez2 b10 with the valU correspondence of Ech b64 digit,  A000567-OctagonalStarNumberz,
#   stRt hndling b8%bfr8^XpOnNt8 from bsstr(),fix isol8ing exponent() mantissa() thru parts() if nEded,                  A004999-SumsOf2NonNeg8iveCubes,
#   add (xp|fr|pr|ac|fm|to)b8() (fraction nstdof mantissa, precision, accuracy) && ftb8|rdx() 2set both from&&tobs radix2gethr,  A001597-PerfectPowers,
#   considr cma() ',' && spf() sprintf && dolr() '$'.00 centz && colr() optionz for "b8" tobs output configur8ion,       A000914-StirlingNumsOf1stKind,
#   add cache limitz && new thorO alt2prEsrv&&indX evry NtIr cnv contXt sO objX canBgrOwn in2 setz of at lEst cnv hist stringz,
#   add valid8ion&&tStz&&Carp problMz,mAB add benchmRkz,Xplor specialIzng Use as reso pairz or c8 IDa of rAng spanz or IPaddrz or fOn numz etc.,
#   from F4SMBLMx version of c8 considr b8 objX that can *= b10('11') or multiply by anothr obj that Ech stringifIz configurably(wi Dfalt b64 unpaded),
#   fix dynamic BigFloat accuracy setting 2 stay ahead of b256 Fact 2 not lose d8a Byond Dfalt fixed accuracy 4096 wich mustBinadequ8 4 ~/.log/fctz4096*.utf,
#   stuD BestSequences of HTTPS://OEIS.Org/webcam lIk HTTPS://OEIS.Org/A002964 && VanEck && piknXt4ascNdng worth implementing alongside Sum8 Fact Fibo Prim,
#   mAB HTTPS://OEIS.Org/A249572 4havng 8 88 888 fitz Oct nIcly (althO mAB2simpl&&grOz in digitz2rapidly?),A057683 A003325 A000108-Catalan A046790 good,
#   mk new sqnz function wich tkz top8 ascNdng CquNcez && mkz a colrd scrnsAvr lIk my old 4Dos prmz && prOgrSz thM al2gethr in grOing d8afIl 2pikupwherlFtoff;
# OEIS:A051227-BernoulliNumWiDenomin8or42&&Perl:my @p=(2,3,5,7);my @c=(4);my $p=7;for(my $n=6;$n<=3126;$n+=6){while($p<$n+1){$p+=2;next if grep $p%$_==0,@p;
# N52MDZsh:From HTTPS://Reddit.Com/r/commandline/comments/135iay2/easiest_way_to_do_number_base_conversions_in_the  Zsh can cnv: `ec $(([#32]1337))` 32#19P,
#  `ec $((32#19P))` 1337, `ec $(([#64]10))` zsh: invalid base (must be 2 to 36 inclusive): 64, `ec $(([#36]10))` 36#A, `ec $(([#36]34))` 36#Y... so b36 max;
#   HTTPS://GitHub.Com/KevinPGalligan/bs has a basic Python base-convert-cli utility that takes -f from && -t to base-numbers or b(in) o(ct) d(ec) h(ex);
# nOt:HTTPS://YouTu.be/4mRxIgu9R70&t=1891s "Plain Text • Dylan Beattie • GOTO 2023" # N98:0hB0 of GOTOConferences @0VV0 31m:31s has UTF8 encoded-byte bit uses:
#   0xxxxxxx  <- UTF8 1-byte char's always just same as the original 7-bit ASCII; 1BytFitz 127 (2xx7=0x3F);
#   110xxxxx 10xxxxxx 2-byte char   always must stRt 110  ;mid-wIde-charByt alwAz 2BFitz 2,048 (2xx5*2xx6);
#   1110xxxx 10xxxxxx 10xxxxxx 3-byte char must stRt 1110 ;  stRtz ^10 (hIStbitz) 3Bytz 65,536 (all UCS2?);
#   11110xxx 10xxxxxx 10xxxxxx 10xxxxxx 4-bytes stRt 11110;  sOgObak||fwd4 ^11+0; 4B 2,097,152 (64xx3 * 8);
# NBNLBase:HTTPS://YouTu.be/PQAhC1M93C8 "Can Any Number Be A Base?" # NBJ:0L20 of DigitalGenius on neg8ive,r8ional,transcendental,imaginary,&& complex bases;
require     Exporter ; # `bc <<< "obase=16;ibase=10;255"` givz FF; #  push(@p,$p);push(@c,$p-1);} print $n/2, ", " if(!grep $n%$_==0,@c);} print "\n";
use base qw(Exporter);our $umbc=0; # Use Math::Base::Convert flag (doesn't work if eval'd), but commented out the only-for-efficiency dependency for now...
#se         Math::Base::Convert;   #   although maybe eventually preparing efficient dependencies in docker container can ease any such distribution burdens
use         Math::BigFloat     ;Math::BigFloat->accuracy( 16_384); # compromise on number of digits of accuracy for conversion functions, for speed sake
use         Math::BigInt       ;Math::BigInt  ->accuracy(262_144); # use much higher accuracy 4 integers especially needed for Fact to handle the biggest numz
use         Encode; # mAB l8r grOw accuracy to 64xx4 == 16_777_216 or 64xx3 == 262_144 if 4096 ever becomes too small (bigr gOz slO thO!);
use         Carp; # orig Math::BaseCnv BlO memoized Sum8(as summ) hEr&&had nO Fibo&&OnlyXportd cnv byDflt but now Oct Xportz almOst evrythng promiscuously
use           IO::Handle qw( ); # trying to get dupd (or just orig) STDERR to autoflush(1) since being buffered in b2b8; # Pnt8 Hex8 probably 2 hUge 2 mMOIz?;
use Memoize;memoize('Prim');memoize('Fibo');memoize('Fact');memoize('Chus');memoize('Xpn8');memoize('Ttr8'); #moize('Pnt8');memoize('Hex8');
our @EXPORT= qw(b8 cnv cnv10__ cnv__10 ocT deC dec heX HEX b10 b64 b64sort b110 b128 b210 b256 b910 b93k dig diginit  cma coma  rotW rot1
    @kana $umbc b8b2 b2b8  Prim Prmz  Sum8 Sumz  Fibo Fibz  Fact Fctz  Chus   Xpn8 Xpnz  Ttr8 Ttrz  Pnt8 Pntz  Hex8 Hexz  calQ       txt8);
our $VERSION='0.0';my  $d8VS='O3RM3cal';my $Auth='PipStuart <Pip@CPAN.Org>';
our @kana=qw(ぁあぃいぅうぇえぉおかがきぎくぐけげこごさざしじすずせぜそぞた
だちぢっつづてでとどなにぬねのはばぱひびぴふぶぷへべぺほぼぽまみ
むめもゃやゅゆょよらりるれろゎわゐゑをんゔゕゖ゗1゛゜ゝゞゟ
゠ァアィイゥウェエォオカガキギクグケゲコゴサザシジスズセゼソゾタ
ダチヂッツヅテデトドナニヌネノハバパヒビピフブプヘベペホボポマミ
ムメモャヤュユョヨラリルレロヮワヰヱヲンヴヵヶヷヸヹヺ・ーヽヾ); # maybe whittle down to just characters then duplic8 to b8 top 46 of 64 for track-numbering?
my $pkgn =        __PACKAGE__;
my $pkgl = length __PACKAGE__;
my $bssb = $pkgn . '::_bs::' ; # indentify 'base sub'
my $d2bs='';my %bs2d=(); # Digitz to BaseSet, BaseSet to Digitz
my %digsetz=(
  'usr' => [], # this will be assigned if a dig(\@newd) call is made
# 'udf' => [], # User Defined From
# 'udt' => [], # User Defined To   for sepR8 setz, but these can just be per object
  'bin' => ['0', '1'],
  'dna' => ['a', 'c', 'g', 't'],
  'DNA' => ['A', 'C', 'G', 'T'], # maybe extend these to 8-char altern8 for ocT if 'P', 'Z', '?', '?' turn out to be correct new discoveries
  'ocT' => ['0'..'7'],
  'dec' => ['0'..'9'],
  'doz' => ['0'..'9', 'ẋ', 'έ'], # DOZenal with Doe-1..ᵪᶓẋέƸ last 'dek' && 'ell' curvy && clean smart for monetary from HTTPS://YouTube.Com/watch?v=U6xJfP7-HCc
  'heX' => ['0'..'9', 'a'..'f'], # base60 has easy division benefits of adding 5 10 (ᵡᵪᶍx dek) 12 15 20 30 to base12 2 3 4 6 but so many more chars hardr2lern
  'HEX' => ['0'..'9', 'A'..'F'], # nice that half is 6/10 'doe' .6, third 4/10 .4, quarter 3/10 .3, sixth 2/10 .2 all same sizes with no repeating decimals
  'b36' => ['0'..'9', 'a'..'z'],
  'B36' => ['0'..'9', 'A'..'Z'],
  'b62' => ['0'..'9', 'a'..'z', 'A'..'Z'],
  'b64' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_'], # max Month:C:12 Day:V:31
  'm64' => ['A'..'Z', 'a'..'z', '0'..'9', '+', '/'], # MIME::Base64 0..63
  'iru' => ['A'..'Z', 'a'..'z', '0'..'9', '[', ']'], # P10 server-server protocol used by IRCu daemon
  'url' => ['A'..'Z', 'a'..'z', '0'..'9', '-', '_'], # MIME::Base64::URLSafe which avoids %2B && %2F expansions of '+' && '/' respectively (U2b ID likely this)
  'rgx' => ['A'..'Z', 'a'..'z', '0'..'9', '!', '-'], # ReGular eXpression variant
  'id0' => ['A'..'Z', 'a'..'z', '0'..'9', '_', '-'], # IDentifier style 0
  'id1' => ['A'..'Z', 'a'..'z', '0'..'9', '.', '_'], # IDentifier style 1
  'xnt' => ['A'..'Z', 'a'..'z', '0'..'9', '.', '-'], # XML Name Tokens (Nmtoken)
  'xid' => ['A'..'Z', 'a'..'z', '0'..'9', '_', ':'], # XML identifiers (Name   )
  'sxl' => ['?', '@', 'A'..'Z', '[','\\', ']', '^',  # Sixel Base64 from VT100.Net
            '_', '`', 'a'..'z', '{', '|', '}', '~'],
  'b85' => ['0'..'9', 'A'..'Z', 'a'..'z', '!', '#',  # RFC 1924 for IPv6 addresses like in Math::Base85
            '$', '%', '&', '(', ')', '*', '+', '-', ';', '<', '=', '>', '?', '@', '^', '_', '`', '{', '|', '}', '~'],
  'asc' => [' ', '!', '"', '#', '$', '%', '&', "'",  # Base96 7-bit printable 0x20 (space) - 0x7F (tilde ~) 'ascii' from Math::Base::Convert
            '(', ')', '*', '+', ',', '-', '.', '/', '0'..'9', ':', ';', '<', '=', '>', '?', '@', 'A'..'Z', '[','\\',
            ']', '^', '_', '`', 'a'..'z', '{', '|', '}', '~'],
  'b96' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base96  but starting with b64 characters
            ' ', '!', '"', '#', '$', '%', '&', "'", '(', ')', '*', '+', ',', '-', '/', ':', ';', '<', '=', '>', '?',
            '@', '[','\\', ']', '^', '`', '{', '|', '}', '~'],
  '128' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base128 but starting with b64 characters (blacK chS pibrq before White, then cRdz sHDc, then k && K)
            '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕',
            '🃁', '🃂', '🃃', '🃄', '🃅', '🃆', '🃇', '🃈', '🃉', '🃊', '🃋', '🃍', '🃎',
            '🂱', '🂲', '🂳', '🂴', '🂵', '🂶', '🂷', '🂸', '🂹', '🂺', '🂻', '🂽', '🂾',
            '🃑', '🃒', '🃓', '🃔', '🃕', '🃖', '🃗', '🃘', '🃙', '🃚', '🃛', '🃝', '🃞',
            '🂡', '🂢', '🂣', '🂤', '🂥', '🂦', '🂧', '🂨', '🂩', '🂪', '🂫', '🂭', '🂮',
            '♚', '♔'],
  '256' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base128 but starting with b64 characters (blacK chS pibrq before White, then cRdz sHDc, then k && K)
            '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕',
            '🃁', '🃂', '🃃', '🃄', '🃅', '🃆', '🃇', '🃈', '🃉', '🃊', '🃋', '🃍', '🃎',
            '🂱', '🂲', '🂳', '🂴', '🂵', '🂶', '🂷', '🂸', '🂹', '🂺', '🂻', '🂽', '🂾',
            '🃑', '🃒', '🃓', '🃔', '🃕', '🃖', '🃗', '🃘', '🃙', '🃚', '🃛', '🃝', '🃞',
            '🂡', '🂢', '🂣', '🂤', '🂥', '🂦', '🂧', '🂨', '🂩', '🂪', '🂫', '🂭', '🂮',
            '♚', '♔', # 2du:try 23FB powr symbol 4 0 && 2460..2468 && du b64z;
#           '⏻', '①', '②', '③', '④',
#           '⑤', '⑥', '⑦', '⑧', '⑨',
# 5 abov iz HEX 2464 so dec `UTF8 9316 9321` && mk `u8` !Zsh alias 4 b64 pRamz;
# 24B6 - 24EA; sO did :r!dec 24B6; :r!UTF8 9398 9451;
#ⒶⒷ940024B82IuⒸⒹⒺⒻⒼⒽⒾⒿ:
#940824C02J0ⓀⓁⓂⓃⓄⓅⓆⓇ941624C82J8ⓈⓉⓊⓋⓌⓍⓎⓏ942424D02JGⓐⓑⓒⓓⓔⓕⓖⓗ943224D82JOⓘⓙⓚⓛⓜⓝⓞⓟ:
#944024E02JWⓠⓡⓢⓣⓤⓥⓦⓧ944824E82Jeⓨⓩ⓪: # 24EB-24FF hav neg8iv or dbl-circld numbz: `u8 9451 9472|sS`: ⓫ ⓬ ⓭ ⓮ ⓯ ⓰ ⓱ ⓲ ⓳ ⓴ ⓵ ⓶ ⓷ ⓸ ⓹ ⓺ ⓻ ⓼ ⓽ ⓾ ⓿:;
            '⓪', '①', '②', '③', '④',
            '⑤', '⑥', '⑦', '⑧', '⑨',
            'Ⓐ', 'Ⓑ', 'Ⓒ', 'Ⓓ', 'Ⓔ', 'Ⓕ', 'Ⓖ', 'Ⓗ',  # 'Ⓜ',
            'Ⓘ', 'Ⓙ', 'Ⓚ', 'Ⓛ', 'Ⓜ', 'Ⓝ', 'Ⓞ', 'Ⓟ', # M iz lIk dbl-wId othrz!
            'Ⓠ', 'Ⓡ', 'Ⓢ', 'Ⓣ', 'Ⓤ', 'Ⓥ', 'Ⓦ', 'Ⓧ', 'Ⓨ', 'Ⓩ',
            'ⓐ', 'ⓑ', 'ⓒ', 'ⓓ', 'ⓔ', 'ⓕ', 'ⓖ', 'ⓗ',
            'ⓘ', 'ⓙ', 'ⓚ', 'ⓛ', 'ⓜ', 'ⓝ', 'ⓞ', 'ⓟ', # oops! only did 192;
            'ⓠ', 'ⓡ', 'ⓢ', 'ⓣ', 'ⓤ', 'ⓥ', 'ⓦ', 'ⓧ', 'ⓨ', 'ⓩ', 'Ø', 'Ī',
#   HTTPS://Symbl.CC/en/search/?q=Braille 2800-28FF; `u8 10240 10496|sS`;
# 10240 2800 2W0⠀⠁⠂⠃⠄⠅⠆⠇8⠈⠉⠊⠋⠌⠍⠎⠏G⠐⠑⠒⠓⠔⠕⠖⠗O⠘⠙⠚⠛⠜⠝⠞⠟W⠠⠡⠢⠣⠤⠥⠦⠧e⠨⠩⠪⠫⠬⠭⠮⠯m⠰⠱⠲⠳⠴⠵⠶⠷u⠸⠹⠺⠻⠼⠽⠾⠿:
# 10304 2840 2X0⡀⡁⡂⡃⡄⡅⡆⡇8⡈⡉⡊⡋⡌⡍⡎⡏G⡐⡑⡒⡓⡔⡕⡖⡗O⡘⡙⡚⡛⡜⡝⡞⡟W⡠⡡⡢⡣⡤⡥⡦⡧e⡨⡩⡪⡫⡬⡭⡮⡯m⡰⡱⡲⡳⡴⡵⡶⡷u⡸⡹⡺⡻⡼⡽⡾⡿:
# 10368 2880 2Y0⢀⢁⢂⢃⢄⢅⢆⢇8⢈⢉⢊⢋⢌⢍⢎⢏G⢐⢑⢒⢓⢔⢕⢖⢗O⢘⢙⢚⢛⢜⢝⢞⢟W⢠⢡⢢⢣⢤⢥⢦⢧e⢨⢩⢪⢫⢬⢭⢮⢯m⢰⢱⢲⢳⢴⢵⢶⢷u⢸⢹⢺⢻⢼⢽⢾⢿:
# 10432 28C0 2Z0⣀⣁⣂⣃⣄⣅⣆⣇8⣈⣉⣊⣋⣌⣍⣎⣏G⣐⣑⣒⣓⣔⣕⣖⣗O⣘⣙⣚⣛⣜⣝⣞⣟W⣠⣡⣢⣣⣤⣥⣦⣧e⣨⣩⣪⣫⣬⣭⣮⣯m⣰⣱⣲⣳⣴⣵⣶⣷u⣸⣹⣺⣻⣼⣽⣾⣿:
#           'À','Á','Â','Ã','Ä','Å','Æ','Ç',  'È','É','Ê','Ë','Ì','Í','Î','Ï',  'Ð','Ñ','Ò','Ó','Ô','Õ','Ö','×',  'Ø','Ù','Ú','Û','Ü','Ý','Þ','ß',
#           'à','á','â','ã','ä','å','æ','ç',  'è','é','ê','ë','ì','í','î','ï',  'ð','ñ','ò','ó','ô','õ','ö','÷',  'ø','ù','ú','û','ü','ý','þ','ÿ',
#           'Ā','ā','Ă','ă','Ą','ą','Ć','ć',  'Ĉ','ĉ','Ċ','ċ','Č','č','Ď','ď',  'Đ','đ','Ē','ē','Ĕ','ĕ','Ė','ė',  'Ę','ę','Ě','ě','Ĝ','ĝ','Ğ','ğ',
#           'Ġ','ġ','Ģ','ģ','Ĥ','ĥ','Ħ','ħ',  'Ĩ','ĩ','Ī','ī','Ĭ','ĭ','Į','į',  'İ','ı','Ĳ','ĳ','Ĵ','ĵ','Ķ','ķ',  'ĸ','Ĺ','ĺ','Ļ','ļ','Ľ','ľ','Ŀ',
# 10240 2800 2W0⠀⠁⠂⠃⠄⠅⠆⠇8⠈⠉⠊⠋⠌⠍⠎⠏G⠐⠑⠒⠓⠔⠕⠖⠗O⠘⠙⠚⠛⠜⠝⠞⠟W⠠⠡⠢⠣⠤⠥⠦⠧e⠨⠩⠪⠫⠬⠭⠮⠯m⠰⠱⠲⠳⠴⠵⠶⠷u⠸⠹⠺⠻⠼⠽⠾⠿:; # 2du:just add this quOtd commad split optn 2 UTF8 az u8;
            '⠀', '⠁', '⠂', '⠃', '⠄', '⠅', '⠆', '⠇',  '⠈', '⠉', '⠊', '⠋', '⠌', '⠍', '⠎', '⠏',
            '⠐', '⠑', '⠒', '⠓', '⠔', '⠕', '⠖', '⠗',  '⠘', '⠙', '⠚', '⠛', '⠜', '⠝', '⠞', '⠟',
            '⠠', '⠡', '⠢', '⠣', '⠤', '⠥', '⠦', '⠧',  '⠨', '⠩', '⠪', '⠫', '⠬', '⠭', '⠮', '⠯',
            '⠰', '⠱', '⠲', '⠳', '⠴', '⠵', '⠶', '⠷',  '⠸', '⠹', '⠺', '⠻', '⠼', '⠽', '⠾', '⠿',
           ], # mAB som othr gUd 64 can gO in abov && lEv Braille full-256 4 up2 512 thN?;
  '2562'=> ['^0', '^1', '^2', '^3', '^4', # 2du:mk 256 just singl charz! ;
 #'256' => ['^0', '^1', '^2', '^3', '^4', # mAB trAil wi ^ nstd of prEfix? ;
            '^5', '^6', '^7', '^8', '^9',
            '^A', '^B', '^C', '^D', '^E', '^F', '^G', '^H',
            '^I', '^J', '^K', '^L', '^M', '^N', '^O', '^P',
            '^Q', '^R', '^S', '^T', '^U', '^V', '^W', '^X', '^Y', '^Z',
            '^a', '^b', '^c', '^d', '^e', '^f', '^g', '^h',
            '^i', '^j', '^k', '^l', '^m', '^n', '^o', '^p',
            '^q', '^r', '^s', '^t', '^u', '^v', '^w', '^x', '^y', '^z',
            '^.', '^_',  # Base256 but starting with b128characters
            '♟^', '♙^', '♞^', '♘^', '♝^', '♗^', '♜^', '♖^', '♛^', '♕^',
            '🃁^', '🃂^', '🃃^', '🃄^', '🃅^', '🃆^', '🃇^',
            '🃈^', '🃉^', '🃊^', '🃋^', '🃍^', '🃎^',
            '🂱^', '🂲^', '🂳^', '🂴^', '🂵^', '🂶^', '🂷^',
            '🂸^', '🂹^', '🂺^', '🂻^', '🂽^', '🂾^',
            '🃑^', '🃒^', '🃓^', '🃔^', '🃕^', '🃖^', '🃗^',
            '🃘^', '🃙^', '🃚^', '🃛^', '🃝^', '🃞^',
            '🂡^', '🂢^', '🂣^', '🂤^', '🂥^', '🂦^', '🂧^',
            '🂨^', '🂩^', '🂪^', '🂫^', '🂭^', '🂮^',
            '♚^', '♔^', # O1OLJUMP:fInd Xtra 0-9,
            # mAB just combIn 1/ 215F ⅟ wi 0-9 aftr && some prEcursr4 1st 128,
# NCDL8ris:HTTPS://YouTu.be/RlpQkHBGAs0 "I Made the World's Smallest Tetris..." # NCA:05b0 of EvanZhou showing really cool use of UniCodeBraille2x4 in Tetris;
#   HTTPS://Symbl.CC/en/search/?q=Braille 2800-28FF; `u8 10240 10496`;
            # mAB ^ 4 128 thN wut 2 + 0-_ && ♟-♔ (or 6-dot Braille?) AgN B4:
            #   dbl-spAcd 93k, && mk just singl-char 256 setz from digz+letrz,
            # mAB 1st 128 (&& 2nd in2 256 2?) get trAiling ^ caret !prEfix? ;
            '⅟0', '⅟1', '⅟2', '⅟3', '⅟4',
            '⅟5', '⅟6', '⅟7', '⅟8', '⅟9',
            '⅟A', '⅟B', '⅟C', '⅟D', '⅟E', '⅟F', '⅟G', '⅟H',
            '⅟I', '⅟J', '⅟K', '⅟L', '⅟M', '⅟N', '⅟O', '⅟P',
            '⅟Q', '⅟R', '⅟S', '⅟T', '⅟U', '⅟V', '⅟W', '⅟X', '⅟Y', '⅟Z',
            '⅟a', '⅟b', '⅟c', '⅟d', '⅟e', '⅟f', '⅟g', '⅟h',
            '⅟i', '⅟j', '⅟k', '⅟l', '⅟m', '⅟n', '⅟o', '⅟p',
            '⅟q', '⅟r', '⅟s', '⅟t', '⅟u', '⅟v', '⅟w', '⅟x', '⅟y', '⅟z',
            '⅟.', '⅟_',
            '♟⅟', '♙⅟', '♞⅟', '♘⅟', '♝⅟', '♗⅟', '♜⅟', '♖⅟', '♛⅟', '♕⅟',
            '🃁⅟', '🃂⅟', '🃃⅟', '🃄⅟', '🃅⅟', '🃆⅟', '🃇⅟',
            '🃈⅟', '🃉⅟', '🃊⅟', '🃋⅟', '🃍⅟', '🃎⅟',
            '🂱⅟', '🂲⅟', '🂳⅟', '🂴⅟', '🂵⅟', '🂶⅟', '🂷⅟',
            '🂸⅟', '🂹⅟', '🂺⅟', '🂻⅟', '🂽⅟', '🂾⅟',
            '🃑⅟', '🃒⅟', '🃓⅟', '🃔⅟', '🃕⅟', '🃖⅟', '🃗⅟',
            '🃘⅟', '🃙⅟', '🃚⅟', '🃛⅟', '🃝⅟', '🃞⅟',
            '🂡⅟', '🂢⅟', '🂣⅟', '🂤⅟', '🂥⅟', '🂦⅟', '🂧⅟',
            '🂨⅟', '🂩⅟', '🂪⅟', '🂫⅟', '🂭⅟', '🂮⅟',
            '♚⅟', '♔⅟'],
  '93k' => []); # HTTPS://GitHub.Com/Kaiepi/ra-Acme-BaseCJK/blob/main/lib/Acme/BaseCJK.rakumod describes using CJK Unified Ideographs for a Base92844;
#           '^À','^Á','^Â','^Ã','^Ä','^Å','^Æ','^Ç',  '^È','^É','^Ê','^Ë','^Ì','^Í','^Î','^Ï',  '^Ð','^Ñ','^Ò','^Ó','^Ô','^Õ','^Ö','^×',  '^Ø','^Ù','^Ú','^Û','^Ü','^Ý','^Þ','^ß',
#           '^à','^á','^â','^ã','^ä','^å','^æ','^ç',  '^è','^é','^ê','^ë','^ì','^í','^î','^ï',  '^ð','^ñ','^ò','^ó','^ô','^õ','^ö','^÷',  '^ø','^ù','^ú','^û','^ü','^ý','^þ','^ÿ',
#           '^Ā','^ā','^Ă','^ă','^Ą','^ą','^Ć','^ć',  '^Ĉ','^ĉ','^Ċ','^ċ','^Č','^č','^Ď','^ď',  '^Đ','^đ','^Ē','^ē','^Ĕ','^ĕ','^Ė','^ė',  '^Ę','^ę','^Ě','^ě','^Ĝ','^ĝ','^Ğ','^ğ',
#           '^Ġ','^ġ','^Ģ','^ģ','^Ĥ','^ĥ','^Ħ','^ħ',  '^Ĩ','^ĩ','^Ī','^ī','^Ĭ','^ĭ','^Į','^į',  '^İ','^ı','^Ĳ','^ĳ','^Ĵ','^ĵ','^Ķ','^ķ',  '^ĸ','^Ĺ','^ĺ','^Ļ','^ļ','^Ľ','^ľ','^Ŀ'],
# b8-O1OLJLJL.pm -1; had rankz 1st thru BLACkz sc 1st, thN Redz HD wi their rankz A-9TJQK 2nd, but rERAnjz 2 let D!cs all be colr letr cRdz wich R their suit…;
# '128' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base128 but starting with b64 characters (blacK chS pibrq before White, then cRdz sHDc, then k && K)
#           '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕', '🂡', '🂢', '🂣', '🂤', '🂥', '🂦', '🂧', '🂨', '🂩', '🂪', '🂫',
#           '🂭', '🂮', '🃑', '🃒', '🃓', '🃔', '🃕', '🃖', '🃗', '🃘', '🃙', '🃚', '🃛', '🃝', '🃞', '🂱', '🂲', '🂳', '🂴', '🂵', '🂶',
#           '🂷', '🂸', '🂹', '🂺', '🂻', '🂽', '🂾', '🃁', '🃂', '🃃', '🃄', '🃅', '🃆', '🃇', '🃈', '🃉', '🃊', '🃋', '🃍', '🃎', '♚', '♔'],
# '256' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base256 but starting with b128characters
#           '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕', '🂡', '🂢', '🂣', '🂤', '🂥', '🂦', '🂧', '🂨', '🂩', '🂪', '🂫',
#           '🂭', '🂮', '🃑', '🃒', '🃓', '🃔', '🃕', '🃖', '🃗', '🃘', '🃙', '🃚', '🃛', '🃝', '🃞', '🂱', '🂲', '🂳', '🂴', '🂵', '🂶',
#           '🂷', '🂸', '🂹', '🂺', '🂻', '🂽', '🂾', '🃁', '🃂', '🃃', '🃄', '🃅', '🃆', '🃇', '🃈', '🃉', '🃊', '🃋', '🃍', '🃎', '♚', '♔', # shud ck if BlO =~ /[A-Z]/
#           'À','Á','Â','Ã','Ä','Å','Æ','Ç',  'È','É','Ê','Ë','Ì','Í','Î','Ï',  'Ð','Ñ','Ò','Ó','Ô','Õ','Ö','×',  'Ø','Ù','Ú','Û','Ü','Ý','Þ','ß',
#           'à','á','â','ã','ä','å','æ','ç',  'è','é','ê','ë','ì','í','î','ï',  'ð','ñ','ò','ó','ô','õ','ö','÷',  'ø','ù','ú','û','ü','ý','þ','ÿ',
#           'Ā','ā','Ă','ă','Ą','ą','Ć','ć',  'Ĉ','ĉ','Ċ','ċ','Č','č','Ď','ď',  'Đ','đ','Ē','ē','Ĕ','ĕ','Ė','ė',  'Ę','ę','Ě','ě','Ĝ','ĝ','Ğ','ğ',
#           'Ġ','ġ','Ģ','ģ','Ĥ','ĥ','Ħ','ħ',  'Ĩ','ĩ','Ī','ī','Ĭ','ĭ','Į','į',  'İ','ı','Ĳ','ĳ','Ĵ','ĵ','Ķ','ķ',  'ĸ','Ĺ','ĺ','Ļ','ļ','Ľ','ľ','Ŀ'],
# b8-H92M7p4e.pm -2; orig bridge anti-alphabetical sHDc suitz of Ace 1st, going thru rankz A..9TJQK Ech wi their Own sHDc, but didn't alIn wi letrz wL sO... ;
# '128' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base128 but starting with b64 characters (blacK chS pibrq before White, then cRdz sHDc, then k && K)
#           '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕', '🂡', '🂱', '🃁', '🃑', '🂢', '🂲', '🃂', '🃒', '🂣', '🂳', '🃃',
#           '🃓', '🂤', '🂴', '🃄', '🃔', '🂥', '🂵', '🃅', '🃕', '🂦', '🂶', '🃆', '🃖', '🂧', '🂷', '🃇', '🃗', '🂨', '🂸', '🃈', '🃘',
#           '🂩', '🂹', '🃉', '🃙', '🂪', '🂺', '🃊', '🃚', '🂫', '🂻', '🃋', '🃛', '🂭', '🂽', '🃍', '🃝', '🂮', '🂾', '🃎', '🃞', '♚', '♔'],
# '256' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base256 but starting with b128characters
#           '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕', '🂡', '🂱', '🃁', '🃑', '🂢', '🂲', '🃂', '🃒', '🂣', '🂳', '🃃',
#           '🃓', '🂤', '🂴', '🃄', '🃔', '🂥', '🂵', '🃅', '🃕', '🂦', '🂶', '🃆', '🃖', '🂧', '🂷', '🃇', '🃗', '🂨', '🂸', '🃈', '🃘',
#           '🂩', '🂹', '🃉', '🃙', '🂪', '🂺', '🃊', '🃚', '🂫', '🂻', '🃋', '🃛', '🂭', '🂽', '🃍', '🃝', '🂮', '🂾', '🃎', '🃞', '♚', '♔', # shud ck if BlO =~ /[A-Z]/
#           'À','Á','Â','Ã','Ä','Å','Æ','Ç',  'È','É','Ê','Ë','Ì','Í','Î','Ï',  'Ð','Ñ','Ò','Ó','Ô','Õ','Ö','×',  'Ø','Ù','Ú','Û','Ü','Ý','Þ','ß',
#           'à','á','â','ã','ä','å','æ','ç',  'è','é','ê','ë','ì','í','î','ï',  'ð','ñ','ò','ó','ô','õ','ö','÷',  'ø','ù','ú','û','ü','ý','þ','ÿ',
#           'Ā','ā','Ă','ă','Ą','ą','Ć','ć',  'Ĉ','ĉ','Ċ','ċ','Č','č','Ď','ď',  'Đ','đ','Ē','ē','Ĕ','ĕ','Ė','ė',  'Ę','ę','Ě','ě','Ĝ','ĝ','Ğ','ğ',
#           'Ġ','ġ','Ģ','ģ','Ĥ','ĥ','Ħ','ħ',  'Ĩ','ĩ','Ī','ī','Ĭ','ĭ','Į','į',  'İ','ı','Ĳ','ĳ','Ĵ','ĵ','Ķ','ķ',  'ĸ','Ĺ','ĺ','Ļ','ļ','Ľ','ľ','Ŀ']);
for (         0   ..        255  ) { push(@{$digsetz{'93k'}}, $digsetz{'256'}[$_]); }
for (hex('04E00') .. hex('09FFC')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs ## loop through && add all the Unicode CJK 92_844 chars;
for (hex('03400') .. hex('04DBF')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs Extension A     ## might prepend '256' digz 93100 so 93k
for (hex('20000') .. hex('2A6DD')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs Extension B     ##   can be new default digset to work 4
for (hex('2A700') .. hex('2B734')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs Extension C     ##   all my b16, b64, b128, b256 already;
for (hex('2B740') .. hex('2B81D')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs Extension D
for (hex('2B820') .. hex('2CEA1')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs Extension E
for (hex('2CEB0') .. hex('2EBE0')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs Extension F
for (hex('30000') .. hex('3134A')) { push(@{$digsetz{'93k'}}, chr($_)); } # CJK Unified Ideographs Extension G
# NB3M1UTF:from ~/dvl/c8/simp/ncurses/ncurses-6.4-20231028/test/widechars-utf8-tabs.txt it looks possible to substitute at least UpperCase A-Z with wide-chars:
#   ＡＰＰＬＥ	-- It's an ＡＰＰＬＥ.
#   ＤＯＧ		-- No, that's not my ＤＯＧ.
#   ＯＲＡＮＧＥ	-- Yeah, that's ＪＵＩＣＹ.
#   ＣＨＩＣＫＥＮ	-- Normally not a ＰＥＴ.
#   ＣＡＴ		-- No, never put a ＤＯＧ and a ＣＡＴ together!
#   ＦＩＳＨ	-- Cats like ＦＩＳＨ.
#   ＬＥＭＯＮ	-- You ＫＮＯＷ how it ＴＡＳＴＥＳ.
#   ----+----1----+----2----+----3----+----4
#   ＡＰＰＬＥ	-- It's an ＡＰＰＬＥ.
#    ＡＰＰＬＥ	-- It's an ＡＰＰＬＥ.
#     ＡＰＰＬＥ	-- It's an ＡＰＰＬＥ.
#      ＡＰＰＬＥ	-- It's an ＡＰＰＬＥ.
#       ＡＰＰＬＥ	-- It's an ＡＰＰＬＥ.
#        ＡＰＰＬＥ	-- It's an ＡＰＰＬＥ.
#   ----+----1----+----2----+----3----+----4  # so then some of b64 / b256 could be double-char wide like most of 93k, but stil mA nEd spAcz 4 rSt 2 alIn nIc;
# Originally I had Cards go Aces of spade, heart, diamond, club (like Bridge anti-alphabetical for suits), then 2s, 3s, etc. 10s, Js, Qs, Ks since this would
#   be the natural progression of rank values but I've decided to switch over to A23..10JQK all 13 together for 4 suit blocks of spade, club, heart, diamond
#   since this will map all black suited cards into the A..Z UpperCase letters and the red suits will map evenly to a..z lowercase letters instead of old way;
# stRt mkng thEs all altrn8ly methodz with from && to flavorz
sub bs2init{%bs2d = ();for(my $i=0;$i<@{$digsetz{$d2bs}};$i++){$bs2d{${$digsetz{$d2bs}}[$i]}=$i;}; return(@{$digsetz{$d2bs}});} # bild hash digit chrz=>@ndxz;
sub diginit{$d2bs = '93k';bs2init(); } # reset digit character list to initial prEferred Dfalt && above BaseSet to init
diginit(); # initialize the Dflt digit set whenever this package is used
sub dig{            return( @{$digsetz{$d2bs}}) unless(@_); # assign a new digit character list
  if(ref $_[0]){$d2bs = 'usr';$digsetz{$d2bs} = [ @{ shift() } ];}
  else         {my $setn = shift();return(-1) unless(exists $digsetz{$setn});$d2bs = $setn;}
  if(@{$digsetz{$d2bs}}){return(bs2init());}else{return(diginit());}}
sub cnv__10{my  $t = shift || '0';my $s = shift || 64;my $n = Math::BigFloat->new(0); # convert from some number base to decimal
  my $nega = '';$nega = '-' if($t =~ s/^-//);my $frds=0;#$n->accuracy( 4096); #if($s >=64){$n->accuracy($s);
                                                        #$n->precision(   0); #} FRactionDigitSize, needed incrEsd accU 4ckm8 big b128
  for(my $tndx=length($t)-1;$tndx>=0;$tndx--){substr($t,$tndx,1,'') unless(exists $bs2d{substr($t,$tndx,1)} || # strip out chars not in the digit set
                                                                                        substr($t,$tndx,1) =~ /[\%]/);} # and not fraction sepR8or
  while(length  ($t)){my $thed=substr($t,0,1,'');if($thed eq '%'){$frds=1;}else{$frds++ if($frds);$n += $bs2d{$thed};$n *= $s;}}
# orig:rds){$n /= $s**$frds;}else{$n /= $s;} $n->bneg() if($nega eq '-');
  if($frds){my $bs = Math::BigFloat->new($s);$bs->bpow($frds);$n /= $bs;}
  else     {$n /= $s;} $n->bneg() if($nega eq '-');my  $nstr="$n";if($nstr=~ /\.0{64}/){$nstr=~ s/\..+$//;}# mk in2 just an int if very close
  return(   $nstr  );} # was retn nega . int($n/$s)
sub cnv10__{my  $n = Math::BigFloat->new(shift || '0');my $s = shift || 64;my $t = '';#$n->accuracy(4096); #$s) if($s >=64); # cnv from dec 2 some numb base
  diginit() if ($s > @{$digsetz{$d2bs}});my $nega = '';$nega = '-' if($n->is_neg());my $frds=0;$n->babs(); # $n neg8ive zero '-0' failed is_zero() so ABS val
  my($nlen,$nfrl)= $n->length();my $nge1=1;$nge1=0 if($n  < 1);#say "nlen:$nlen:nfrl:$nfrl:"; 12.5 => 3,1 NumLENgth,NumFRactionLength NumGr8rorEqualto1
  if($nfrl){while(!$n->is_int() && length($t) <  64){          $n *= $s;$frds++;     # handle fraction part
                 $t       .= $digsetz{$d2bs}->[($n % $s)]     ;$n -= int($n % $s);}  # subtract out just int modulo digit
                 $t        =                      '%'     . $t;my $bs = Math::BigFloat->new($s);$bs->bpow($frds);$n /= $bs; # `cnv 12.1` loops
                                                                        $n->bint() ;}#$n->binc() if(length($t) >= 64 && $nge1);} # round off rEPting fractions
                 $t        = $digsetz{$d2bs}->[0]         . $t if(   $n->is_zero()); # prepend zero if there's no integer part left to decode
  while(!$n->is_zero()){$t = $digsetz{$d2bs}->[($n % $s)] . $t;$n /= $s;$n->bint() ;}#say "afn:$n:t:$t:"; # need 2 !binc above when 0.\d+ from E-\d+
  if(length($t)){$t        = $nega .  $t;         }
  else          {$t        = $digsetz{$d2bs}->[0];}  return($t);}
sub deC     {my $rtns = '';
  if   (@_       ){while(@_          ){my $narg=shift(@_);$narg =~ s/^\s*\+?//;$narg =~ s/[^0-7-]//g;
      if  ($umbc){$rtns .=    Math::Base::Convert::cnv(       $narg ,'ocT','dec') . ' ';}
      else       {$rtns .=                         cnv__10(uc($narg),   8       ) . ' ';}} $rtns =~ s/\s$//  ;} # short4 ocT         -> deCimal
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-7-]//g;
        if($umbc){$rtns .=    Math::Base::Convert::cnv(       $ilss ,'ocT','dec') . ' ';}
        else     {$rtns .=                         cnv__10(uc($ilss),   8       ) . ' ';}} $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/\.0+$//;return($rtns);}
sub ocT     {my $rtns = '';
  if   (@_       ){while(@_          ){my $narg=shift(@_);$narg =~ s/^\s*\+?//;$narg =~ s/[^0-9-]//g;
      if  ($umbc){$rtns .= lc(Math::Base::Convert::cnv(       $narg ,'dec','ocT')). ' ';}
      else       {$rtns .= lc(                     cnv10__(   $narg ,         8 )). ' ';}} $rtns =~ s/\s$//  ;} # short4 decimal     -> ocT
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9-]//g;
        if($umbc){$rtns .= lc(Math::Base::Convert::cnv(       $ilss ,'dec','ocT')). ' ';}
        else     {$rtns .= lc(                     cnv10__(   $ilss ,         8 )). ' ';}} $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/\.0+$//;return($rtns);}
sub dec     {my $rtns = '';
  if   (@_       ){while(@_          ){my $narg=shift(@_);$narg =~ s/^\s*\+?//;$narg =~ s/[^0-9A-F-]//gi;
      if  ($umbc){$rtns .=    Math::Base::Convert::cnv(       $narg ,'heX','dec') . ' ';}
      else       {$rtns .=                         cnv__10(uc($narg),  16       ) . ' ';}} $rtns =~ s/\s$//  ;} # short4 HEXadecimal -> decimal
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9A-F-]//gi;
        if($umbc){$rtns .=    Math::Base::Convert::cnv(       $ilss ,'heX','dec') . ' ';}
        else     {$rtns .=                         cnv__10(uc($ilss),  16       ) . ' ';}} $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/\.0+$//;return($rtns);}
sub heX     {my $rtns = '';
  if   (@_       ){while(@_          ){my $narg=shift(@_);$narg =~ s/^\s*\+?//;$narg =~ s/[^0-9-]//g;
      if  ($umbc){$rtns .= lc(Math::Base::Convert::cnv(       $narg ,'dec','heX')). ' ';}
      else       {$rtns .= lc(                     cnv10__(   $narg ,        16 )). ' ';}} $rtns =~ s/\s$//  ;} # short4 decimal     -> HEX
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9-]//g;
        if($umbc){$rtns .= lc(Math::Base::Convert::cnv(       $ilss ,'dec','heX')). ' ';}
        else     {$rtns .= lc(                     cnv10__(   $ilss ,        16 )). ' ';}} $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/\.0+$//;return($rtns);}
sub HEX     {      return( uc(                     heX(       @_               )))     ;}
sub b10     {my $rtns = '';my $tucf; # TemporaryUseConvertFlag to detect if a b64 float needs to be handled
  if   (@_       ){while(@_          ){my $narg=shift(@_);if(defined($narg)){
                                                          $narg =~ s/^\s*\+?//;$narg =~ s/[^0-9A-Z._%-]//gi;$tucf=$umbc;$tucf=0 if($narg =~ /[-%]/);
      if  ($tucf){$rtns .=    Math::Base::Convert::cnv(       $narg ,'b64','dec') . ' ';}
      else       {$rtns .=                         cnv__10(   $narg ,  64       ) . ' ';}}}$rtns =~ s/\s$//  ;} # short4 base64      -> decimal
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9A-Z._%-]//gi;$tucf=$umbc;$tucf=0 if($ilss =~ /[-%]/);
        if($tucf){$rtns .=    Math::Base::Convert::cnv(       $ilss ,'b64','dec') . ' ';}
        else     {$rtns .=                         cnv__10(   $ilss ,  64       ) . ' ';}} $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/(\.\d+?)0+$/$1/;return($rtns);}
sub b64     {my $rtns = '';my $tucf;
  if   (@_       ){while(@_          ){my $narg=shift(@_);if(defined($narg)){ # somehow $narg was spewing undefined warningz for substitution so testing now
                                                          $narg =~ s/^\s*\+?//;$narg =~ s/[^0-9.-]     //gx;$tucf=$umbc;$tucf=0 if($narg =~ /[-.]/);
      if  ($tucf){$rtns .=    Math::Base::Convert::cnv(       $narg ,'dec','b64') . ' ';}
      else       {$rtns .=                         cnv10__(   $narg ,        64 ) . ' ';}}}$rtns =~ s/\s$//  ;} # short4 decimal     -> base64
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9.-]     //gx;$tucf=$umbc;$tucf=0 if($ilss =~ /[-.]/);
        if($tucf){$rtns .=    Math::Base::Convert::cnv(       $ilss ,'dec','b64') . ' ';}
        else     {$rtns .=                         cnv10__(   $ilss ,        64 ) . ' ';}} $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}return($rtns);}
sub b64sort {return( map { b64($_) } sort { $a <=> $b } map { b10($_) } @_ );}
sub b110    {my $rtns = ''; # M:B:C doesn't have my b128 set so skip $umbc
  if   (@_       ){while(@_          ){my $narg=decode('UTF-8',shift(@_));$narg =~ s/^\s*\+?//; # mIt alsO want2strip leading zerOs aftr optional plus-sign?
                  $rtns .=                         cnv__10(   $narg ,       128 ) . ' '; } $rtns =~ s/\s$//  ;} # short4 base128     -> base10
  elsif(!-t STDIN){my @id8a;chomp(@id8a=decode('UTF-8',<STDIN>));for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;
                  $rtns .=                         cnv__10(   $ilss ,       128 ) . ' '; } $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/\.0+$//;return($rtns);}
sub b128    {my $rtns = ''; # may want b128sort also
  if   (@_       ){while(@_          ){my $narg=shift(@_);$narg =~ s/^\s*\+?//;$narg =~ s/[^0-9-]//g;
                  $rtns .=                         cnv10__(   $narg ,       128 ) . ' '; } $rtns =~ s/\s$//  ;} # short4 base10      -> base128
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9-]//g;
                  $rtns .=                         cnv10__(   $ilss ,       128 ) . ' '; } $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}return($rtns);}
sub b210    {my $rtns = ''; # M:B:C doesn't have my b256 set so skip $umbc
# cmnt BlO fixng `pab "print b210(b256(calQ('15xx63')))"` 2nOlongr prnt "Wide char at /usr/lib/x86_64-linux-gnu/perl/5.28/Encode.pm line 228." butBlIk *|b210;
  if   (@_       ){while(@_          ){my $narg=decode('UTF-8',shift(@_));$narg =~ s/^\s*\+?//; # mAB just decode UTF-8 from STDIN but not function pRamz?
                  $rtns .=                         cnv__10(   $narg ,       256 ) . ' '; } $rtns =~ s/\s$//  ;} # short4 base256     -> base10
  elsif(!-t STDIN){my @id8a;chomp(@id8a=decode('UTF-8',<STDIN>));for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;
                  $rtns .=                         cnv__10(   $ilss ,       256 ) . ' '; } $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/\.0+$//;return($rtns);}
sub b256    {my $rtns = '';
  if   (@_       ){while(@_          ){my $narg=shift(@_);$narg =~ s/^\s*\+?//;$narg =~ s/[^0-9-]//g;
                  $rtns .=                         cnv10__(   $narg ,       256 ) . ' '; } $rtns =~ s/\s$//  ;} # short4 base10      -> base256
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9-]//g;
                  $rtns .=                         cnv10__(   $ilss ,       256 ) . ' '; } $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}return($rtns);}
sub b910    {my $rtns = '';
  if   (@_       ){while(@_          ){my $narg=decode('UTF-8',shift(@_));$narg =~ s/^\s*\+?//;
                  $rtns .=                         cnv__10(   $narg ,    93_100 ) . ' '; } $rtns =~ s/\s$//  ;} # short4 base93k     -> base10
  elsif(!-t STDIN){my @id8a;chomp(@id8a=decode('UTF-8',<STDIN>));for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;
                  $rtns .=                         cnv__10(   $ilss ,    93_100 ) . ' '; } $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}$rtns=~s/\.0+$//;return($rtns);}
sub b93k    {my $rtns = '';
  if   (@_       ){while(@_          ){my $narg=shift(@_);$narg =~ s/^\s*\+?//;$narg =~ s/[^0-9-]//g;
                  $rtns .=                         cnv10__(   $narg ,    93_100 ) . ' '; } $rtns =~ s/\s$//  ;} # short4 base10      -> base93k
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)){                   $ilss =~ s/^\s*\+?//;$ilss =~ s/[^0-9-]//g;
                  $rtns .=                         cnv10__(   $ilss ,    93_100 ) . ' '; } $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}return($rtns);}
sub b8      {my $rtns = '';my $nega = '';my($numb,$fbas,$tbas)= @_;
  unless(defined($fbas) && length($fbas)){$fbas = 'b64';$tbas = 'dec';}
  unless(defined($tbas) && length($tbas)){$tbas = $fbas;$fbas = $numb;$numb = undef;}
  $fbas = 'b64' if(defined($fbas) && length($fbas) && $fbas eq '64'); # force usage of b64 for 64 basez (default is different order)
  $tbas = 'b64' if(defined($tbas) && length($tbas) && $tbas eq '64');
  if(defined($numb) && length($numb)){my $b64n = $numb;$b64n =~ s/^\s*\+//;$nega='-' if($b64n =~ s/^-//);
                                         $b64n =~ s/[^0-9A-Za-z._]+//g; # basic limiting of Default b64 number to b64 chars
    if($umbc){return(      $nega . Math::Base::Convert::cnv($b64n,$fbas,$tbas));}
    else     {return(      $nega .                      cnv($b64n,$fbas,$tbas));}}
  elsif(!-t STDIN){my @id8a;chomp(@id8a=<STDIN>);for my $id8l(@id8a){ # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)                     ){$nega='';$ilss =~ s/^\s*\+//;$nega='-' if($ilss =~ s/^-//);
        if($umbc){$rtns .= $nega . Math::Base::Convert::cnv($ilss,$fbas,$tbas) . ' ';}
        else     {$rtns .= $nega .                      cnv($ilss,$fbas,$tbas) . ' ';}} $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//;}return($rtns);}
# CoNVert between any number bases within digit-set size
sub cnv     {my $rtns = '';my $nega = '';my($numb,$fbas,$tbas)  = (decode('UTF-8',shift(@_)),decode('UTF-8',shift(@_)),decode('UTF-8',shift(@_)));my @id8a;
  if((!defined($numb) || !length($numb)) && !-t STDIN){chomp(@id8a=decode('UTF-8',<STDIN>));$tbas =    10;$fbas =    64;              }
  if(  defined($numb) &&  length($numb)  && $numb =~ /^\d+$/ &&
       defined($fbas) &&  length($fbas)  && $fbas =~ /^\d+$/ && # chomp on undef warning came from below decode && id8l split when testing old 01podc.t;
     (!defined($tbas) || !length($tbas)) && !-t STDIN){chomp(@id8a=decode('UTF-8',<STDIN> // ''));$tbas = $fbas;$fbas = $numb;$numb = undef;}
  if(@id8a){for my $id8l(@id8a){next unless defined $id8l; # Input d8a Line && Input Line Split on Spacez below
      for my $ilss(split(/\s+/,$id8l)                     ){$nega='';$ilss =~ s/^\s*\+//;$nega='-' if($ilss =~ s/^-//); # mAB rEcursiv call bad?
                  $rtns .= $nega .                      cnv($ilss,$fbas,$tbas) . ' '; } $rtns =~ s/\s$/\n/;}$rtns =~ s/\n$//; return($rtns);}
  if( !defined($numb) || !length($numb)){return('');} # no STDIN && no valid numb so return empty string (or -1?)
  return($digsetz{$d2bs}->[0]) if($numb =~ /^-?0+$/); # lots of (neg8ive?) zeros is just single digit zero
  if  (!defined($tbas)){ # makeup reasonable values for missing params (used to \d => HEX,^0x or [0-9A-F] => dec,[G-Z._] => b10 but now favoring b64 over HEX)
    if(!defined($fbas)){ # only got a numb without FromBase or ToBase
      if   ($numb =~ /^-?\d+(\.\d+(E-?\d+)?)?$/i){$fbas =    10;$tbas = 64;} # just     decimal digits (now maybe BigFloat)
      elsif($numb =~ /^-?0x[0-9A-Fa-f]+$/       ){$fbas =    16;$tbas = 10;} # prefixed HEX or heX
      elsif($numb =~ /^-?[0-9A-Z._%]+$/i        ){$fbas =    64;$tbas = 10;} # just     b64     chars  (now with % fraction sepR8or)
      else                                       {$fbas =   128;$tbas = 10;} # otherwise assume '128' digit set
      #lse {croak("!*EROR*! Can't determine reasonable FromBase && ToBase just from number:$numb!\n");}
    } elsif($fbas =~   /^\d+$/){           # got just a FromBase that isitself valid decimal digits
      if   ($numb =~ /^-?\d+$/ &&    $fbas != 10){$tbas = $fbas;$fbas = 10;} # just     decimal digits && only FromBase makes sense as ToBase instead
      else                                       {$tbas =    10;           } # else use decimal as ToBase
    } else {croak("!*EROR*! Can't understand non-decimal or neg8ive FromBase:$fbas!\n");}} # got just a FromBase containing non-decimal digit characters
  $fbas = 64 if($fbas =~ /\D/ && $numb =~ /^[-0-9A-Z._%]+$/i); # favor b10 if FromBase or ToBase have non-decimal digits
  $tbas = 10 if($tbas =~ /\D/); # should eventually accept digit set names here in addition to just decimal bases
  if($fbas == 16){$numb =~ s/^0x//i;$numb = uc($numb);}         return(-1) if($fbas < 2 || $tbas < 2); # invalid base error
  dig('128') if($fbas == 128 || $tbas == 128);
  $numb = cnv__10($numb,$fbas) if($numb =~ /[^0-9.E-]/i || $fbas != 10);
  $numb = cnv10__($numb,$tbas) if(                         $tbas != 10);return($numb);}
#sub _cnv {my $bc= shift;my $nstr; # Xampl from M:B:Cnv 4 sepR8 method or plain function
#  if(ref $bc && ref($bc) eq $pkgn){$nstr= shift;} # if method call:  yes, number to convert is next arg
#  else                            {$nstr= $bc; $bc= $pkgn->new(@_); # no, first arg is number to convert
#use overload q("")  => \&_stringify; # just overload stringify of M:BF to cnv this to tobs when needed for Dfalt output
#sub _stringify{my $self= shift;if(exists($self->{'strz'}{$self->{'mbfo'}->fstr()})){
#                                 return($self->{'strz'}{$self->{'mbfo'}->fstr()});} # try!2rEcompUte
# my $negf=  0;my $tocp= $self->{'mbfo'}->copy()->as_int();my $frpt= $self->{'mbfo'}->fstr();unless($frpt=~ s/^.*?[.%]//){$frpt= '';}
# my $bfrf=  0;my $tdst='';my $tdsk= $self->{'dset'};$tdsk= $self->{'tods'} if(exists(         $self->{'tods'}) &&
#                                                                              exists($digsetz{$self->{'tods'}}));
#                             $tdsk=          'b64'   unless(defined($tdsk) && exists($digsetz{$tdsk}));
# if($tocp < 0){$negf=1;$tocp->bneg();} # nEd special handlng4custom dig set usr or per-obj udf && udt,mAB good2Unique ck digitz B4 rEvers hashing them
# if(exists($digsetz{$tdsk})){#for(my $i = 0;$i < @{$digsetz{$tdsk}};$i++){$self->{'tdlu'}{$digsetz{$tdsk}[$i]} = $i;}
# # $tdst.=$self->{'mbfo'}->bstr().' ';#cnv($tocp->bstr(),10,$self->{'tobs'});
#   while($tocp >=                 $self->{'tobs'}){  $tdst= $digsetz{$tdsk}[$tocp % $self->{'tobs'}] . $tdst; # mAB show fsstr() 4m
#     $tocp = int($tocp /          $self->{'tobs'});} $tdst= $digsetz{$tdsk}[$tocp                           ] . $tdst; #   wi handlng4 e-\d
#   if(defined($frpt) && $frpt){if($self->{'tobs'}==     64  ){$tdst.= '%';}else{$tdst.= '.';}
#     $tdst.= cnv($frpt,10,        $self->{'tobs'});} $tdst= "-$tdst" if($negf); $self->{'tdst'}= $tdst;
##   $self->{'strz'}{      $self->{'fsrc'}}=  $tdst unless(exists($self->{'strz'}{$self->{'fsrc'}})); # Ech from1nc
# }
# # $self->{'strz'}{      $tdst                   }=  $self->fstr();  # popUl8 cache of new from source fsrc abov && hEr mAB cud map tdst bak2 M:BF
##  if ($self->{'tobs'}== 64){ # du some bAsic colr8ion, or betr to let be sepR8
##    if($tdst=~ /^(.*?)([%])(.*)$/){$tdst= b8c($1) . "$W$2" . bfr8c($3) . $z;} # not yet custom colr() method, but moving that way
##    else                          {$tdst= b8c($tdst)                   . $z;}}
##      $self->{'strz'}{   $self->fstr()           }=  $tdst;  # cache any M:BF mapping2 colrd tobs dStin8ion tdst
# return($tdst);} # From digit-set to BigFloat below
#sub f2bf {my $self= shift;my $fdsk= $self->{'dset'};$fdsk= $self->{'frds'} if(exists(         $self->{'frds'}) &&
#                                                                             exists($digsetz{$self->{'frds'}}));
# my $bfrf=0; # need special handling for custom dig set usr or per-obj udf && ud2,mAB good2Unique ck the digitz B4 rEvers hashing && computing off them
# if(defined($fdsk) && exists($digsetz{$fdsk})){
#   for(my $i = 0;$i < @{$digsetz{$fdsk}};$i++){ $self->{'fdlu'}{$digsetz{$fdsk}[$i]} = $i;}
#   my $fstr= $self->{'fsrc'};        if(!exists($self->{'fdlu'}{'-'}) && $fstr=~ s/^-//){$self->{'mbfo'}->fneg();}
#                                     if(!exists($self->{'fdlu'}{'+'})){  $fstr=~ s/^\+//;}
#   while($fstr=~ s/^(.)//){my $msdc=$1; # MostSignificantDigitCharacter  # try M:BF =~ /^[+-]?\d+(\.\d+)?(E[+-]?\d+)?$/i
#     if   (exists(                              $self->{'fdlu'}{$msdc})){
#       $self->{'mbfo'}->fadd(                   $self->{'fdlu'}{$msdc});}
#     elsif($msdc eq '.'  ||                    ($self->{'from'}== 64 &&  $msdc eq '%')){$bfrf=1;} # bAsic handling fraction . % sepR8orz2
#     $self->{'mbfo'}->fmul(                     $self->{'from'}) if(length($fstr));
#     $bfrf++ if($bfrf);}
#   if($bfrf){my $bf4p = Math::BigFloat->new($self->{'from'});$bf4p->bpow($bfrf);$self->{'mbfo'}->fdiv($bf4p);}
#}} # turn From in2 BigFloat by first rEvers lookup from digitz && cnv
## Math::BigFloat->round_mode('common'); # must be (even|odd|[-+]inf|zero|trunc|common)
## Math::BigFloat->precision( 64);
# Math::BigFloat->accuracy(  64); # maybe could mk cfg() like in /usr/share/perl/5.22.1/Math/BigInt.pm config() to access additional hash for b8 d8a
#sub new{my $clas= shift || 'Oct::b8';my $nstr= shift;my $mbfo= Math::BigFloat->new(); # gNralE don't want2set M:BF precision or accuracy
#                                                          #$mbfo->accuracy(64);
## my $mbfc=$mbfo->config();#$mbfc->{'round_mode'}='common';#$mbfc->{'accuracy'}=64;#$mbfc->{'class'}=$clas;
## my $self= bless({'strz'=>{},'dset'=>$d2bs},$clas);#for(sort keys %{$mbfc}){if(defined($mbfc->{$_})){printf "%-11s:%s:\n",$_,$mbfc->{$_};}}
# my $self= bless({'strz'=>{},'dset'=>$d2bs,'mbfo'=>$mbfo},$clas);
## my $self= bless($mbfo,$clas);$self->{'strz'}={};$self->{'dset'}= $d2bs;#$self->{'mbfo'}= $mbfo;
# # try lOdng hI accuraC M:BF objz alongside base-conversion meta-d8a
# if(defined($nstr) && $nstr!~ /::/){             $self->{'fsrc'}= $nstr; # consider loading multiple M:BFz wi cnv contXt in2 compound b8 obj
#   if  (@_){ # also accept from && tobs constructor paramz only after number string (which could be just Xplicit Dfalt: '0')
#     if(@_ > 1){if   ($_[0]=~ /^(\d+):(\S{3})$/){$self->{'from'}= $1;$self->{'frds'}= $2;}
#                elsif($_[0]=~ /^(\d+)$/        ){$self->{'from'}= $1;}
#                elsif(exists($digsetz{$_[0]})  ){$self->{'from'}= scalar(@{$digsetz{$_[0]}});
#                                                 $self->{'frds'}= $_[0];}
#                if   ($_[1]=~ /^(\d+):(\S{3})$/){$self->{'tobs'}= $1;$self->{'tods'}= $2;}
#                elsif($_[1]=~ /^(\d+)$/        ){$self->{'tobs'}= $1;}
#                elsif(exists($digsetz{$_[1]})  ){$self->{'tobs'}= scalar(@{$digsetz{$_[1]}});
#                                                 $self->{'tods'}= $_[1];}}
#     else      {$self->{'from'}=     10;$self->{'tobs'}= $_[0];}
#                if   ($_[0]=~ /^(\d+):(\S{3})$/){$self->{'tobs'}= $1;$self->{'tods'}= $2;}
#                elsif(exists($digsetz{$_[0]})  ){$self->{'tobs'}= scalar(@{$digsetz{$_[0]}});
#                                                 $self->{'tods'}= $_[0];}
#   } else{if   ($nstr=~ /^[-+]?[0-9_]+    (\.[0-9_]*    )?$/x){$self->{'from'}= 10;$self->{'tobs'}= 64;$self->{'mbfo'}->fadd(    $nstr );}
#          elsif($nstr=~ /^[-+]?[0-9A-Z._]+(\%[0-9A-Z._]*)?$/i){$self->{'from'}= 64;$self->{'tobs'}= 10;$self->{'mbfo'}->fadd(b10($nstr));}}}
# $self->{'from'}=  10 unless(exists($self->{'from'}) && defined($self->{'from'}) && $self->{'from'}=~  /^(\d+)$/);
# $self->{'tobs'}=  64 unless(exists($self->{'tobs'}) && defined($self->{'tobs'}) && $self->{'tobs'}=~  /^(\d+)$/);
# # mIt tSt4sPd doubling b64 in2 ocT && Using M:BI->from_oct($ostr) or ->as_oct() prEfixz0 2rEvers dIrection
# if    ($self->{'from'}==10 && $self->{'tobs'}==64){$self->{'strz'}{$self->{'fsrc'}}= b64($self->{'fsrc'});}
# elsif ($self->{'from'}==64 && $self->{'tobs'}==10){$self->{'strz'}{$self->{'fsrc'}}=     $self->{'mbfo'}->fstr();}
# else                                              {$self->f2bf();} # try to convert between other than b10 && b64
# return($self);}
# `q 93100xx16` ~ 31.9eBIG so blox of 16 93k charz could Ech Xpand 2 33 bytz, but most are double-width && 3-octetz Ech whN NcOded in UTF-8 sO mIt not B ...
# `q   256xx33` ~ 29.6eBIG   ... struggling to support, but eventually I'll probably try to in some generalized way someday. 16, 64, && 256 are good 4 now;
# 2du:add auto-output 2 both wi -a 2 togl it off && -o\s?OutPutFileName 2 also turn Auto off,suport HEX|he[xX] && 6([56][kK]|5536) && 93[kK] wi 16 vs. 33bytz,
#   &&add auto-write footerz wi -f 2 togl it off && only upd8 frombase when loading if stil Dflt 256 but warn if -b param chngd from 256 && difrz from spec'd,
#   mk my auto-out XtNsionz 4 b2b8 .b$tobs && warn if difrz from -b param but overId wi -b givN,thN 4 b8b2 also warn if XtNsion difrz from footer spec'd &&thN
#     also again if difrz from -b givN but use -b as prEferd,add slurp to fhnd reads,try adding crAZ -ball wich uses 10,16,64,256,65k all 2gethr && thN inside
#     b8b2 whN lOdng all analyze && keep cntz of how many discrepanCz R found on wich lInz && warn @Nd if multi-chngz mAd in dif lAyrz but use gr8St dif lAyr,
#   add UTF8 Dconstruction showing Ech bytez bitz hIlItd wher they shO sIz && how d8a-bitz combIn from around byte-headrz 2 4m complEt HEX-cOd-pointz in ordr;
sub zpad {my $psiz=shift||2;my $strn=shift||'';if($psiz > length($strn)){$strn= ('0' x ($psiz - length($strn))) . $strn;} return($strn);}
sub b2b8 {my($flnm,$fd8a,$rslt);my $tobs=256;my $spec='152/2,4';my @sd8a; # these 1st converters are gr8 but supporting other basez l8r will be much trickier;
  my $clmz=80;$clmz=$ENV{'COLUMNS'} if(exists($ENV{'COLUMNS'})); #my $linz=24;$linz=$ENV{'LINES'  } if(exists($ENV{'LINES'  }));
  open my $err8,'>&',STDERR or die "Can't open  duplic8 STDERR handle: $!";binmode $err8,':encoding(UTF-8)';$err8->autoflush(1); # IO::Handle 2unbufr my dupd;
  for(@_){if(/^-*b?(\d+|93k)$/ && !-r $_){$tobs=$1;}elsif(-r $_){$flnm=$_; # -b shud alsO accept set namez like 'HEX', 'url', etc. && space thN nXt pRam valU;
      }elsif(/^-*s (\d+(\/(\d+))?(,(\d+))?)$/x && !-r $_){$spec=$1; # set custom spacing spec with size of lInz,optnl /columzPerLine,optnl ','spacezBtwnColmz;
      }elsif(/^-+/){return("!*EROR*! Unrecognized parameter option: $_!\n");}else{$fd8a=$_;}} # 2du:add -help tXt && DscrIb spAc-pad spec && base optnz;
  if   ( defined($spec) && $spec=~ /^(\d+)(\/(\d+))?(,(\d+))?/){push(@sd8a,$1);push(@sd8a,$3) if(defined($3));push(@sd8a,$5) if(defined($5));}
  if   (!defined($flnm) && !defined($fd8a) && !-t STDIN){$fd8a.=                $_  while(<STDIN>);}
  elsif( defined($flnm) &&     -r $flnm){
    open   my $fhnd,'<',$flnm or die "Can't open  handle  for  reading filename: $flnm! $!\n";binmode $fhnd                   ;$fd8a.=$_ while(<$fhnd>);
    close     $fhnd           or die "Can't close handle after reading filename: $flnm! $!\n";}
  if( defined($fd8a)){my @bufr;my @octz=unpack('C*',$fd8a);my $bysz=@octz;my $cr8o=($bysz-1)/(($clmz-2)/8*7);my $pmic=1; #ProgressMeterIntervalCounter;
    for(0..$#octz){ # could easily split result to have 79charz spAc 79charz nwlIn just for easy viewing in vim && strip all \s+ B4 unpack or split;
      if    ($tobs=~ /^256$/ ){$rslt.=          b256( $octz[$_]); # cud alsO apNd nwlIn tab footr wich DscrIbz fInal bytez,tOtl sIz,ToBase used,version,etc.?;
      }elsif($tobs=~ /^ 16$/x){$rslt.=sprintf("%02X", $octz[$_]); # unpack itself can just do H* nstd,which would probably be significantly faster but oh wL;
      }elsif($tobs=~ /^ 64$/x){ # store up 3 bytez (octetz) @ a tIme 2 thN cnv 2 4 b64 charz && apNd thM... thN fInally stor whethr only 1,2,or all 3 in last;
        if  (@bufr==     2   ){$rslt.=   zpad(4, b64(($octz[$_] *256**2)+(  pop(@bufr)*256)+  pop(@bufr)));}else{push(@bufr,$octz[$_]);} # ordrz cudBjackd;
     #}elsif($tobs=~ /^93k$/ ){ # mAB just store up 2 bytez @ a tIme 2 thN cnv 2 1 base65,536 char && don't use the remaining ~28k of charz in the set?;
     #}else{ # compUte how many src binary d8a bytez (octetz) can be used at a time to encode in whatever number base size has been specified for output ...
      }      #   wich mA nEd 2 split up bitz of the src bytz thN roll thM in2 nXt segmNt but th@z a lot trickier than just Uzng 1 or 3 @a tIm 4 b256 && b64;
      while ($_ > int($pmic * $cr8o)){print $err8 '.';$pmic++;} # shud output basic progress meter of first 7/8thz-of-line of dotz;
    } $pmic=1;$cr8o=($bysz-1)/(($clmz-2)/8);my $sofr=0; # reset progress meter interval counter && byte-size to dot-column r8io, && mk new so-far counter;
    if      (@sd8a){my $spad='';$spad= ' ' x $sd8a[2] if(@sd8a == 3);my $lwid=$sd8a[0];my $cwid=$lwid;$cwid=int($lwid/$sd8a[1]) if(@sd8a > 1);my $ewid=$cwid+1;
      while ($rslt=~ /(\S{$lwid})/       ){my $lind=$1;my $linr=$1;$linr=~ s/(\S{$cwid})/$1$spad/g;$linr=~ s/$spad?$/\n/;$rslt=~ s/$lind /$linr/x;$sofr+=$lwid;
       while($sofr > int($pmic * $cr8o)  ){print $err8 '.';$pmic++;}} # shud output basic progress meter of last 8th-of-line of dotz; # abov&&BlO spAc all d8a;
      if    ($rslt=~ /(\S{$ewid,$lwid})$/){my $llin=$1;my $linr=$1;$linr=~ s/(\S{$cwid})/$1$spad/g;                      $rslt=~ s/$llin$/$linr/ ;}}
    if      ($tobs=~ /^ 64$/x){my $bifb=@bufr;if($bifb){push(@bufr,0) while(@bufr <  3); # ordr of 0-pad && BlO Use cudB badly screwd up! not sure on logic;
                               $rslt.=   zpad(4, b64((   pop(@bufr)*256**2)+(  pop(@bufr)*256)+  pop(@bufr))); #else{$bifb=3;} # BytzInFinalBuffer; 3sAm az0;
                               $rslt.=";\n$bifb;"; # append most basic footer 2 strip off end && know how many final bytez from the last buffer should be kept;
      }                       #$rslt.=";\nOctl:b8b2 Vers:$VERSION d8VS:$d8VS bifb:$bifb base:$tobs bysz:$bysz;"; # dump not-so-basic footer 2 verify LMNtz of;
    }# elsif($tobs=~ /^93k$/ ){my $bifb=@bufr;if($bifb){push(@bufr,0) while(@bufr < 15);}} #elsif($tobs!~/^(25|1)6$/){} # hndl all rEmAning unEvN basez l8r;
    if(!defined($rslt)){$rslt='';print $err8 "!*EROR*! Could not successfully read filename (or STDIN) then convert any d8a  to  base: $tobs!\n";}
    else            {$rslt.="\n";print $err8 "\n";}} # finish b8 tXt fIl && progrS mEter dotz lIn wi NewLinez B4 returning 2 shL fIl wrIt && nXt cmd-prmpt;
  close   $err8             or die "Can't close duplic8 STDERR handle: $!";return($rslt);}
sub b8b2 {my($flnm,$fd8a,$rslt);my $frbs=256;my $bifb=0;my $bysz=0; # 2du:Dbug b64 DcOding ordrz, add output file optnz 2 both;
  my $clmz=80;$clmz=$ENV{'COLUMNS'} if(exists($ENV{'COLUMNS'})); #my $linz=24;$linz=$ENV{'LINES'  } if(exists($ENV{'LINES'  }));
  open my $err8,'>&',STDERR or die "Can't open  duplic8 STDERR handle: $!";binmode $err8,':encoding(UTF-8)';$err8->autoflush(1); # unbufr my dupd err;
  for(@_){if(/^-*b?(\d+|93k)$/ && !-r $_){$frbs=$1;}elsif(-r $_){$flnm=$_;} # -b shud alsO accept set namez like 'HEX', 'url', etc. && space thN nXt pRam valU;
       elsif(/^-+/){return("!*EROR*! Unrecognized parameter option: $_!\n");}else{$fd8a=$_;}}
  if   (!defined($flnm) && !defined($fd8a) && !-t STDIN){$fd8a.= decode('UTF-8',$_) while(<STDIN>);}
  elsif( defined($flnm) &&     -r $flnm){ # doI nEd abov $fd8a.= decode('UTF-8',$_)? probably but I got confused because I was writing STDOUT to utf8 wrong;
    open   my $fhnd,'<',$flnm or die "Can't open  handle  for  reading filename: $flnm! $!\n";binmode $fhnd,':encoding(UTF-8)';$fd8a.=$_ while(<$fhnd>);
    close     $fhnd           or die "Can't close handle after reading filename: $flnm! $!\n";}
  if( defined($fd8a)){if($fd8a=~ s/;(\n(.+);)?\n?$//){my $ftxt='';$ftxt=$2 if(defined($2)); # pre-strip footr d8a && parse it;
      if($ftxt=~ /^\d+$/  ){$bifb=$ftxt;}else{my @fldz=split(/\s+/,$ftxt);my %fd8a=('bifb'=>$bifb);for(0..$#fldz){if($fldz[$_]=~ /^(\w{4}):(.+)$/){
            $fd8a{$1}=$2;}} $bifb=$fd8a{'bifb'} if(exists($fd8a{'bifb'}) && $fd8a{'bifb'}=~ /^\d+$/  ); # not using any othr posibl meta-d8a from footr yet;
                            $bysz=$fd8a{'bysz'} if(exists($fd8a{'bysz'}) && $fd8a{'bysz'}=~ /^\d+$/  );
                            $frbs=$fd8a{'base'} if(exists($fd8a{'base'}) && $fd8a{'base'}=~ /^\d+k?$/);}} $fd8a=~ s/\s+//g;
    my $bysf=0;my @bufr;my $tmpr='';my @u8cz=split(//,$fd8a); #unpack('U*',$fd8a); # not sure Y unpack U haz problMz,but split workz aftr decode fIl||ERR;
    my $sofr=0;my $u8sz=@u8cz;my $cr8o=($u8sz-1)/($clmz  );my $pmic=1; #ProgressMeterIntervalCounter; r8io full width && not 7/8thz hEr Bcuz no spAcng;
    for(0..$#u8cz){ # BlO was warning: "Character in 'C' format wrapped in pack at line 367." && I forget how I fixed it but no longer warnz;
      if    ($frbs=~ /^256$/ ){$rslt.=pack('C' , b210($u8cz[$_]));$sofr++;$bysf++; # thot I mIt nEd ord hEr but proly don't;
      }elsif($frbs=~ /^ 16$/x){ # store up 2 HEX charz B4 cnv 2 1 byte  of rslt (actually cud just pack it all back in as H* outside of this u8cz loop);
        if  (@bufr           ){$rslt.=pack('C' ,  hex( pop(   @bufr) . $u8cz[$_]));$sofr+=2;$bysf++ ;}else{push(@bufr, $u8cz[$_]);} # why not 'H2'?;
      }elsif($frbs=~ /^ 64$/x){ # store up 4 b64 charz B4 cnv 2 3 bytez of rslt (Xept 4 very Nd wher last char tLz whethr 2 wrIt just 1,2,or all 3 fInal bytz;
        if  (@bufr==     3   ){$rslt.=$tmpr if(defined($tmpr) && length($tmpr));my $tb10= b10(shift(@bufr) . shift(@bufr) . shift(@bufr) . $u8cz[$_]);
          my @tbtz=($tb10 & 255);$tb10-=$tbtz[0];$tb10/=256;   push(@tbtz,$tb10 & 255);$tb10-=$tbtz[1];$tb10/=256;   push(@tbtz,$tb10); # mAB shift abov?;
                               $tmpr =pack('C3',              @tbtz              );$sofr+=4;$bysf+=3;}else{push(@bufr, $u8cz[$_]);} # 3 bytz in @ary abov;
     #}elsif($frbs=~ /^93k$/ ){ # just use 2**16 65.5k or full range somehow, with odd number of src binary bytez mapped to other count of b93k charz?;
     #}else{ # compUte how 2 cnv encoded d8a in UTF-8 charz of max FromBase bak in2 orig binary d8a;
      }   # nEd 2 sAv prEv pack C3 in tmpr && only pack in2 rslt when whol new tmpr is ready, thN dn hEr handl b64 footer bifb from fInal tmpr,&&du4 93k etc.;
      while ($_ > int($pmic * $cr8o)){print $err8 '.';$pmic++;}} # shud output basic progress meter of first 7/8thz-of-line of dotz;
    if      ($frbs=~ /^ 64$/x){my @tmbz=unpack('C3',$tmpr             ); # thEs mIt nEd 2 gO opOsit ordr or B 1,2 nstd of 1,0? hRd 2 folO ordrz;
      if    ($bifb==     2   ){$rslt  .=  pack('C2',$tmbz[1], $tmbz[0]);$bysf-- ;
      }elsif($bifb==     1   ){$rslt  .=  pack('C' ,          $tmbz[0]);$bysf-=2;
      }else                   {$rslt  .=            $tmpr              ;} print $err8 "!*WARN*! bysz:$bysz does not match bysf:$bysf!\n" if($bysz);
      if    (@bufr           ){  print $err8 "!*EROR*! Some b64 characterz left in buffer: @bufr which should be empty at end of d8a!\n";}
    }# elsif($frbs=~ /^93k$/ ){}
    if(!defined($rslt)){$rslt='';print $err8 "!*EROR*! Could not successfully read filename (or STDIN) then convert any d8a from base: $frbs!\n";}
    else               {         print $err8 ".\n";}} # finish progress meter dotz line with NewLine before returning and next command prompt is output;
  close   $err8             or die "Can't close duplic8 STDERR handle: $!";return($rslt);}
# 2du:add -c && -b pRam optnz 2 cma BlO sO th@ thOz can B spSifId whIl stil pIpng strn on STDIN;
sub cma {my $strn=shift;my $comc=shift||',';my $blok=shift||3; # ECKLNcb3:`cma`cre,8d2,add,com,mas,2lo,ng#,str
  if(!defined($strn) && !-t STDIN){$strn.=$_ while(<STDIN>);}  #   HTTP://Perl.Com/doc/manual/html/pod/perlfaq5.html#How_can_I_output_my_numbers_with
  if(!defined($strn)){$strn='';} # set to empty string if no param or pipe through loaded it
  my  @strz = split(/\n/,$strn); # H92MJK4D:cma && coma were exported from a8.pm for a while but have migr8d here to b8.pm since more applicable with Big numz;
  for(@strz){if(/^\s*[-+]?(\d+)/){my $word = $1; # Bl0Xmplfr0mPerlFAQ5Ab0v; Just:s/^(-?\d+)(\d{3})/$1,$2/g;
                                  my $cwrd =reverse $word;1 while $cwrd=~s/([^,\s]{$blok})([^,\s])/$1$comc$2/; # needs to reset each match or gets $blok+1
                                                          #        cwrd=~s/([^,\s]{$blok})([^,\s])/$1$comc$2/g;
                                     $cwrd =reverse $cwrd;#cwrd=~s/^(\s*)$comc/$1/g;
                                     s/$word/$cwrd/;}} # HBGL0kXa:2du add cma.aft,rde,cim,alp,oin,t as shud not be needing reverse since matchd Lt2Rt raD8 dot;
      $strn =  join("\n",@strz);return($strn);} # orig!enuf cuz must insrt coma,then recalc pos&&from:
sub coma{my $strn=shift;my $comc=shift||',';my $blok=shift||4; # ...like above but dflt comma charz between groups of 4 b64 charz
  if(!defined($strn) && !-t STDIN){$strn.= decode('UTF-8',$_) while(<STDIN>);}
  if(!defined($strn)){$strn='';} # set to empty string if no param or pipe through loaded it
  my  @strz = split(/\n/,$strn);
  for(@strz){if(/^\s*[-+]?([0-9A-Z._]+)(\%([0-9A-Z._]+))?/i){my $word = $1;my $fwrd = '';$fwrd = $3 if(defined($3));
      my $cwrd =reverse $word;1 while $cwrd=~s/([^$comc\s]{$blok})([^$comc\s])/$1$comc$2/; # needs to reset each match or gets $blok+1
         $cwrd =reverse $cwrd;
      my $rwrd =        $fwrd;1 while $rwrd=~s/([^$comc\s]{$blok})([^$comc\s])/$1$comc$2/;
      if(length($rwrd)){$fwrd=~s/^/%/;$rwrd=~s/^/%/;}
      s/$word$fwrd/$cwrd$rwrd/;}}
      $strn = join("\n",@strz);return($strn);} # orig!enuf cuz must insrt coma,then recalc pos&&from:
my @prls=(2);my $mcnd=$#prls;my $mcsq=$prls[-1]**2; # PRimeLiSt, MaxCheckiNDex && MaxCheckSQuared all stored globally within module; # stRt wi PSFiboFactCXTPH;
sub Prim{ # simple function to calcul8 prime     numbers with memoized && local     int comput8ion (redo wi BigInt?)
  my $nthp= shift(@_);return('') unless(defined($nthp));return($prls[$nthp - 1]) if(@prls >= $nthp);my $npnc=$prls[-1]; # simply return desired already found
  while     (@prls  <  $nthp){my $fail=0;$npnc += 2;$npnc-- if($npnc == 4);
    while   ($npnc  >= $mcsq){$mcnd++;$mcsq=$prls[$mcnd] ** 2;} # upd8 MaxCheck until at least NewCandid8 SQuared
    for   my $cndx (0..$mcnd){ # loop up to the MaxCheckiNDex
      unless($npnc  %  $prls[$cndx]){$fail=1;last;}} # testing for no remainder from dividing all primes up to square-root
    push    (@prls,    $npnc) unless($fail);} # keep appending next newest prime values until reaching the desired nth one to return
  return    ($prls[-1]);}
sub Prmz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $pcou=1;my $lbuf= Prim($pcou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxtp= Prim(++$pcou);if($b8l8 == 1){$nxtp= b64($nxtp);}elsif($b8l8 == 2){$nxtp= b256($nxtp);}
    while  (length("$lbuf $nxtp") < $lnsz){$lbuf.=" $nxtp";$nxtp= Prim(++$pcou);if($b8l8 == 1){$nxtp= b64($nxtp);}elsif($b8l8 == 2){$nxtp= b256($nxtp);}}
    say     $out8   $lbuf;                 $lbuf =  $nxtp ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
sub Sum8{ # simple function to calcul8 summ8ion down to 1; # F1OL0L88:I just realized Sum8 is actually a basic multiply near mid instead of while(--){+=}
  my $sum8= shift;return(0) unless(defined($sum8) && $sum8 && ($sum8 > 0));my $answ= Math::BigFloat->new($sum8);$answ *= (($answ/2.0) + 0.5);
  $answ=~ s/\.0+$//;return($answ);}
sub Sumz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $scou=1;my $lbuf= Sum8($scou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxts= Sum8(++$scou);if($b8l8 == 1){$nxts= b64($nxts);}elsif($b8l8 == 2){$nxts= b256($nxts);}
    while  (length("$lbuf $nxts") < $lnsz){$lbuf.=" $nxts";$nxts= Sum8(++$scou);if($b8l8 == 1){$nxts= b64($nxts);}elsif($b8l8 == 2){$nxts= b256($nxts);}}
    say     $out8   $lbuf;                 $lbuf =  $nxts ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
sub Fibo{ # simple function to calcul8 Fibonacci numbers with memoized recursive BigInt comput8ion (now iter8ing up instead of deep-recursing down)
  my $nthf= shift;return(0) unless(defined($nthf));$nthf= int($nthf);return(0) unless(  $nthf > 0);return(1) if(  $nthf <  3) ;
  my $answ= Math::BigInt->new('1');for(3..$nthf){$answ += Math::BigInt->new(Fibo($_-1));$answ -= Math::BigInt->new(Fibo($_-3));};return($answ);}
sub Fibz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $fcou=1;my $lbuf= Fibo($fcou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxtf= Fibo(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}
    while  (length("$lbuf $nxtf") < $lnsz){$lbuf.=" $nxtf";$nxtf= Fibo(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}}
    say     $out8   $lbuf;                 $lbuf =  $nxtf ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
sub Fact{ # simple function to calcul8 factorials                                  # should be able to just use M:BI->bfac() but ck if this memoize is faster
  my $fact= shift;return(0) unless(defined($fact) && $fact && ($fact > 0));my $answ= Math::BigInt->new(  $fact);while(--$fact){$answ *=$fact;}return($answ);}
sub Fctz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $fcou=1;my $lbuf= Fact($fcou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxtf= Fact(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}
    while  (length("$lbuf $nxtf") < $lnsz){$lbuf.=" $nxtf";$nxtf= Fact(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}}
    say     $out8   $lbuf;                 $lbuf =  $nxtf ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
sub Chus{ # simple function to calcul8 n choose m  (i.e., (n! / (m! * (n - m)!)))  # should be able to just use M:BI->bnok() && ck bpi() 4my l8r CLI U8:pi
  my $nstr= shift(@_);my $mstr= shift(@_);return('') unless(defined($nstr) && defined($mstr));
  my $ennn= Math::BigInt->new($nstr);my $emmm= Math::BigInt->new($mstr);return(0) unless(defined($ennn) && defined($emmm) && $ennn&& $emmm&& ($ennn!=$emmm));
  ($ennn,$emmm)=($emmm,$ennn) if($ennn < $emmm); # orig (n->bcmp(m) < 0) but just testing lessthan could be slightly more direct if obj method can be loc8d
  my $diff= $ennn->copy()->bsub($emmm);my $answ= $ennn->copy()->bfac();my $mfct= $emmm->copy()->bfac();my $dfct= $diff->copy()->bfac();$mfct->bmul($dfct);
  return(0) if($mfct->is_zero());$answ->bdiv($mfct);return($answ->bstr());}
sub Xpn8{ # simple function to calcul8 exponenti8ion (n**n); # cud mAB not for loop 1..n && instead just $answ**$ennn or ->bexp()?;
  my $ennn= shift;return(0) unless(defined($ennn) && $ennn && ($ennn > 0));my $answ= Math::BigInt->new(  $ennn);for(1..$ennn){$answ *=$ennn;}return($answ);}
sub Xpnz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $fcou=1;my $lbuf= Xpn8($fcou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxtf= Xpn8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}
    while  (length("$lbuf $nxtf") < $lnsz){$lbuf.=" $nxtf";$nxtf= Xpn8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}}
    say     $out8   $lbuf;                 $lbuf =  $nxtf ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
sub Ttr8{ # simple function to calcul8 Tetr8ion (n**n**n**n...**n); # mA nEd for loop 1..n to $answ*= Xpn8($ennn) or ->bexp()?;
  my $ennn= shift;return(0) unless(defined($ennn) && $ennn && ($ennn > 0));my $answ= Math::BigInt->new(  $ennn);for(1..$ennn){
    $answ*= Math::BigInt->new(Xpn8($ennn));}return($answ);}
sub Ttrz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $fcou=1;my $lbuf= Ttr8($fcou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxtf= Ttr8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}
    while  (length("$lbuf $nxtf") < $lnsz){$lbuf.=" $nxtf";$nxtf= Ttr8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}}
    my $wcou= int(length($lbuf) / $lnsz);if($wcou > 0){$lcou+=$wcou;} # this should count wide wrapping linez && stop sooner;
    say     $out8   $lbuf;                 $lbuf =  $nxtf ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
sub Pnt8{ # simple function to calcul8 Pent8ion (Tetr8ion n times); # mA nEd for loop 1..n to $answ*= Ttr8($ennn) or ->bexp()?;
  my $ennn= shift;return(0) unless(defined($ennn) && $ennn && ($ennn > 0));my $answ= Math::BigInt->new(  $ennn);for(1..$ennn){
    $answ*= Math::BigInt->new(Ttr8($ennn));}return($answ);} # nEd 2 not loop past full pAge from Pntz, ck 4 nEd 2 XtNd accuracy, && mAB compute betr than loop?
sub Pntz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $fcou=1;my $lbuf= Pnt8($fcou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxtf= Pnt8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}
    while  (length("$lbuf $nxtf") < $lnsz){$lbuf.=" $nxtf";$nxtf= Pnt8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}}
    say     $out8   $lbuf;                 $lbuf =  $nxtf ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
sub Hex8{ # simple function to calcul8 Hex8ion (Pent8ion n times); # mA nEd for loop 1..n to $answ*= Pnt8($ennn) or ->bexp()?;
  my $ennn= shift;return(0) unless(defined($ennn) && $ennn && ($ennn > 0));my $answ= Math::BigInt->new(  $ennn);for(1..$ennn){
    $answ*= Math::BigInt->new(Pnt8($ennn));}return($answ);}
sub Hexz{my $llnn=shift(@_);my $lnsz=80;my $lcou=0;$lnsz=$ENV{'COLUMNS'}   if(exists($ENV{'COLUMNS'}));$llnn='-' if(!defined($llnn)); # LiNeSiZe, LastLiNeiNdex
  if       ($llnn=~ /-/){if(exists($ENV{'LINES'})){$llnn=$ENV{'LINES'  }-3;}else{$llnn=0;}}   my $fcou=1;my $lbuf= Hex8($fcou);       #         , LineCOUnt
  my $b8l8= shift(@_) || 0;                                                     if($b8l8 == 1){$lbuf= b64($lbuf);}elsif($b8l8 == 2){$lbuf= b256($lbuf);}
  open   my $out8,'>&',STDOUT or die "Can't open  duplic8 STDOUT handle: $!";binmode $out8,':encoding(UTF-8)'; # crE8 local duplic8 of global
  while    ($lcou++ <= $llnn){                          my $nxtf= Hex8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}
    while  (length("$lbuf $nxtf") < $lnsz){$lbuf.=" $nxtf";$nxtf= Hex8(++$fcou);if($b8l8 == 1){$nxtf= b64($nxtf);}elsif($b8l8 == 2){$nxtf= b256($nxtf);}}
    say     $out8   $lbuf;                 $lbuf =  $nxtf ;}
  close     $out8             or die "Can't close duplic8 STDOUT handle: $!";}
# 2du:add Xpn8,Xpnz (n**n) && Ttr8,Ttrz (n Xpn8 n tImz) 2 get much lRgr grOwth than EvN Fact, rEsrch othr functionz of singl n valU wich cud B gud 2 alsO add,
#   mIght want to also add nth piii && eeee digitz here too (or maybe add b8 b64 or b256 input options) && would be pretty cool to build a new Simp app that
#     colrfuly anim8z grOwing d8a fIlz 4 Sumz Fibz Fctz Xpnz Ttrz Prmz Piiz Eeez all integr8d 2gethr as scrEnsAvr lIke old prym (wich workz AgN 4 just Prmz),
#     && mAB if mking new big8 lIk prym thN balance compUt8ion tIme dur8ionz wi mMory && d8a-fIl sIz nEded 2 stor rEsultz sO all CquNcz prOgrS @ similR r8z?;
sub rotW{my @strz=();push(@strz, join(' ',@_))  if(@_); # similR2 vim Vsele g? rot13 but on 32 4b64 charz. Vsele thN :!rotW only works on whole linez (!C-v);
         my $rslt='';push(@strz,<STDIN>) if(!-t STDIN); # should accept @ARGV stringz to rot8 before STDIN (if not a TTY)
  for(@strz){y/0-9A-Za-z._/W-Za-z._0-9A-V/;$rslt .= $_;}  return($rslt);} # basic b64 char trnsl8n BlO (nOt th@Unicode mIt catch many accented charz in there)
sub rot1{my @strz=();push(@strz, decode('UTF-8', join(' ',@_)))  if(@_);  # this is similR2 rotW above but on 128 for b256 charz; # l8r cud proly gNr8 halves
         my $rslt='';push(@strz, decode('UTF-8',<STDIN>)) if(!-t STDIN);my $b2f1='';my $b2s1=''; # Base256 First&&Second128       #   from custom256 digset too
  for(0..127){$b2f1.=$digsetz{'256'}[$_];$b2s1.=$digsetz{'256'}[128+$_];} # not using rangez below since accented standard letterz might match in wrong order
  for(@strz){eval("y/$b2f1$b2s1/$b2s1$b2f1/");$rslt.=$_;} return($rslt);} # normal y/// transl8 does not interpol8 scalar halves so string needs to be evalU8d
# 2du:rEwrIt calQ az just Q or new q hEr wich folOz JBlow888 && pRtner in:     # nEd 2 EvN2aly handl pRNz && bigr new oper8orz && functionz Byond just L2R!;
#   O3RM3mrk:HTTPS://YouTu.be/r6sIXUChB3U "Jonathan Blow on Calling Functions" # O3Q:0EA0 of JonathanBlowHigh wich talkz rEcursN by prIOriTz4nStng oper8or()?;
#   O42MJclQ:HTTPS://GitHub.Com/BGKillas/kalc "ComplexNums, 2D/3D Graphing, ArbitraryPrecision, Vector/M8rix, CLI calQl8or(inRust)wiRealTime output && units";
sub calQ{my $ajps='';if(@_){$ajps=join('',@_);}elsif(!-t STDIN){$ajps=join('',<STDIN>);}$ajps=~ s/(\s|_|,)+//g;my $bgfl=''; # AllJoinedParamStringz && BiGFLoat
  if ($ajps=~ /h/i){$ajps='';$bgfl=" calQ v$VERSION d8VS:$d8VS crE8d by $Auth to CALcul8 most standard math oper8ions using high-precision BigFloat objects;
   h - print this Help text and exit
       all spaces, underscores, and commas are stripped from input, so feel free to include them for clarity when entering particularly large numbers.
       all altern8s below are case-insensitive except 'x' times and 'X' Xor. two adjacent times characters like 'xx' can be used for exponentE8ion.
   l - altern8 for Left     ( parenthesis  # note a nice approxim8ion for Pi to demonstr8 is `q 355/113|c8 0-1_` to just trunc8 to show 1 line of precision;
   r - altern8 for Right    ) parenthesis
   b - altern8 for Bang     ! exclam8ion  (unary logical  neg8ion not implemented yet!) # might want 2 apply this Bang symbol for factorials or just up-'B';
   n - altern8 for Neg8     ~ tilde       (unary bit-wise neg8ion not implemented yet!)
   x - altern8 for multiply * asterisk    (this option is particularly useful for avoiding normal shell file-globbing behavior, when asterisk is unescaped);
   d - altern8 for Divide   / slash       (above double xx does exponentE8ion, or double escaped asterisks to raise a particular base number to some power);
   m - altern8 for Modulo   % percent
   q - altern8 for sQuaroot #  hash/pound/octothorpe  (but probably would prove better to take n-th root, instead of just some basic sQuare for versatiliT);
   s - altern8 for Subtract - minus
   p - altern8 for add      + Plus        (also P should be Pi approxim8d from the Math::BigFloat->bpi() function)
   a - altern8 for And      & AmpersAnd
   o - altern8 for Or       | pipe
   X - altern8 for Xor      ^ caret
       basic parens seem to work but some oper8or precedence will still be going simply left-to-right without following the proper priorities expected from
         HTTPS://PerlDoc.Perl.Org/perlop.html or other typical math utility functions like `bc` and `dc`. Reverse-Polish Not8ion in `orpie` side-steps this.
       calQ is exported from the Oct::b8 Perl Module and comes with a small executable wrapper script which is intended to be suitable for placing in a
         bin/ directory which is in the user's path. you might also find it useful to crE8 a symbolic-link to the script with a command like:
         `cd ~/bin/; ln -s calQ q` which will enable entering expressions like `q '64-(128/7)+15'` from the shell and ':r!q 4096xx2048-1' from within vim.
       2du:rewrite parsing to handle arbitrary expressions in parens, expand sub-expressions in real precedence order, handle unary oper8ors, add ++ and --;
";} # clear all other parameters && assign return value BiGFLoat to hold Help text instead
  $ajps=~ s/s/-/gi;$ajps=~ s/p/+/g ;$ajps=~ s/d/\//gi;$ajps=~ s/o/|/gi;$ajps=~ s/a/&/gi;$ajps=~ s/x/*/g;$ajps=~ s/X/^/g;$ajps=~ s/n/~/gi;$ajps=~ s/m/%/gi;
  $ajps=~ s/l/(/gi;$ajps=~ s/r/)/gi;$ajps=~ s/b/!/gi; # strips spaces, (low-basses) "underscores", && commas up above help-text, then...
  $ajps=~ s/q/#/gi; #   ... allows 'x' times altern8 for multiply asterisk && also takes: Left&&Right parens,Bang,Neg8,Divide,Modulo,Plus,Subtract,And,Or,Xor;
  # All altern8s above are case-insensitive except x times && Xor;  # HTTPS://PerlDoc.Perl.Org/perlop.html
  if($ajps=~ /P/){my $bfpi= Math::BigFloat->bpi();my $bpis="$bfpi";$ajps=~ s/P/$bpis/g;} # something like this should work 4 calQl8ing with Pi,but hangz 4now;
  while  ($ajps=~  / (\(                 (-?\.?\d+(\.\d+)?([Ee][-+]?\d+)?)
                     (\*\*|[-+*\/&|^!~%])(-?\.?\d+(\.\d+)?([Ee][-+]?\d+)?)\))/x){my $grup=$1;$bgfl=Math::BigFloat->new("$2"   );
                                                                                 my $oper=$5;my $nxtn = $6; # OPER8or  && NeXTNumber
  # to support proper precedence, probably need sepR8 parser that processes innermost parens first which right-assoC8s all ** first (maybe after adding
  #   handling for ++ and --), then gets right-assoC8ive unary ! and ~, then left assoC8s * / %, then left + -, then left &, and finally left | ^;
  # current paren handling will not manage multiple oper8ors like `q '3x(8-4-2)'` properly since it is only matching single enclosed numb pairs joined by oper;
    if     ($oper eq '**'){$bgfl**= Math::BigFloat->new("$nxtn");} # following unary oper8ors probably need to precede bgfl with no oper or nxtn match
  # elsif  ($oper eq  '!'){$bgfl  =                     !$bgfl  ;}elsif($oper    eq  '~'){$bgfl  =                     ~$bgfl  ;}
    elsif  ($oper eq  '*'){$bgfl *= Math::BigFloat->new("$nxtn");}elsif($oper    eq  '/'){$bgfl /= Math::BigFloat->new("$nxtn");}
    elsif  ($oper eq  '%'){$bgfl %= Math::BigFloat->new("$nxtn");}
    elsif  ($oper eq  '+'){$bgfl += Math::BigFloat->new("$nxtn");}elsif($oper    eq  '-'){$bgfl -= Math::BigFloat->new("$nxtn");}
    elsif  ($oper eq  '&'){$bgfl &= Math::BigFloat->new("$nxtn");}
    elsif  ($oper eq  '|'){$bgfl |= Math::BigFloat->new("$nxtn");}elsif($oper    eq  '^'){$bgfl ^= Math::BigFloat->new("$nxtn");}
  # $grup      =~ s/ (    [()+*\/&|^]   )/\\$1/gx; # not sure what else might need escaping yet; say "grup:$grup:oper:$oper:nxtn:$nxtn:bgfl:$bgfl:";sleep(1);
    $ajps      =~ s/\Q$grup\E/$bgfl/g;} # try to supplant most nested parens with their computed value before processing basic left-to-right on results below
  if     ($ajps=~ s/^                    (-?\.?\d+(\.\d+)?([Ee][-+]?\d+)?)  //x){         $bgfl  = Math::BigFloat->new("$1"   ); # mAB XtNd Dfalt precision?
    while($ajps=~ s/^(\*\*|[-+*\/&|^!~%])(-?\.?\d+(\.\d+)?([Ee][-+]?\d+)?)  //x){my $oper=$1;my $nxtn = $2; # OPER8or  && NeXTNumber
      if   ($oper eq '**'){$bgfl**= Math::BigFloat->new("$nxtn");} # 2du:add q/# as sQuare (or n-th) root l8r;
  #   elsif($oper eq  '!'){$bgfl  =                     !$bgfl  ;}elsif($oper    eq  '~'){$bgfl  =                     ~$bgfl  ;}
      elsif($oper eq  '*'){$bgfl *= Math::BigFloat->new("$nxtn");}elsif($oper    eq  '/'){$bgfl /= Math::BigFloat->new("$nxtn");}
      elsif($oper eq  '%'){$bgfl %= Math::BigFloat->new("$nxtn");}
      elsif($oper eq  '+'){$bgfl += Math::BigFloat->new("$nxtn");}elsif($oper    eq  '-'){$bgfl -= Math::BigFloat->new("$nxtn");}
      elsif($oper eq  '&'){$bgfl &= Math::BigFloat->new("$nxtn");}
      elsif($oper eq  '|'){$bgfl |= Math::BigFloat->new("$nxtn");}elsif($oper    eq  '^'){$bgfl ^= Math::BigFloat->new("$nxtn");}}} $bgfl=~s/\.0+$//;
  return   ($bgfl);}
# used to prefer benchmarked fast module when possible, but needed clunky overrides below for interface compatibility, now commented probably l8r to be rmvd
#package Math::Base::Convert;no warnings;    # redefine vet subroutine to have b64 defaults (&& disable the redef warnings)
#sub vet{my $class = shift;my $from = shift || '';my $to = shift || '';
# $to   =~ s/\s+//g if $to   && !ref $to  ; # strip white space
# $from =~ s/\s+//g if $from && !ref $from;
# unless($from){$to   = &dec;  # was HEX    # defaults if not defined
#               $from = &b64;} # was dec
# else         {$from = validbase($from);
#   unless($to){$to   = &b64;} # was HEX
#   else       {$to   = validbase($to  );}}
# # convert sub ref's    to variables
# #    $to            =&$to  ;
# #   ($from,my $fhsh)=&$from;
# my $prefix =  ref     $to  ;
# if   ($prefix =~ /heX$/ ){$prefix = '';}#0x';}
# elsif($prefix =~ /ocT$/i){$prefix = '0' ;}
# elsif($prefix =~ /bin$/ ){$prefix = '0b';}
# else                     {$prefix =   '';}
# bless{to      =>          $to    ,
#       tbase   =>  scalar @$to    ,
#       from    =>          $from  ,
#       fhsh    =>  basemap($from) ,
#       fbase   =>  scalar @$from  ,
#       prefix  =>          $prefix,},$class;}
#my %maxdlen=(2  => 31,  # 2^1  # digits, key is base
#            4  => 16,  # 2^2
#            8  => 10,  # 2^3
#           16  =>  8,  # 2^4
#           32  =>  6,  # 2^5
#           64  =>  5,  # 2^6
#          128  =>  4,  # 2^7
#          256  =>  4); # 2^8
#sub cnvpre{my $bc = &_cnv;return $bc unless ref $bc; # nOt:$bc is now an exported background-cyan color from Oct::a8.pm so be careful with reuse;
# my($from,$fbase,$to,$tbase,$sign,$prefix,$nstr)=@{$bc}{qw(from fbase to tbase sign prefix nstr)};#$nstr =~ s/\s+//g;
# my $slen = length($nstr);
# my $tref =    ref($to  );
# unless(   $slen                   ){$nstr = $to->[0];}   # zero length input, return zero
# elsif (lc $tref eq lc ref($from)  ){ # no base conversion
#   if  (   $tref ne    ref($from)  ){ #   convert case?
#     if   ($tref =~ /(DNA|HEX|B36)/){$nstr = uc $nstr;}   #    force upper case
#     elsif($tref =~ /(dna|heX|b36)/){$nstr = lc $nstr;}}} # or force lower case
# else{ my $fblen = length($fbase);    # convert
#   if($fbase & $fbase -1 || $fblen > 256                             ){        $bc->useFROMbaseto32wide ;}  # from base is not power of 2, no shortcuts...
#   elsif(                   $fblen >  32 && !$slen > $maxdlen{$fbase}){        $bc->useFROMbaseto32wide ;}  # big  base && digit str fit32reg  # CalcPP faster
#   else                                                               {        $bc->useFROMbaseShortcuts;}  # shortcuts faster for big numbers
#   # input converted to base 2^32 #
#   if($tbase & $tbase -1 || $tbase > 256                             ){$nstr = $bc->use32wideTObase     ;}  # from base is not power of 2, no shortcuts...
#   elsif(                   $tbase >  32 && @{$bc->{b32str}} == 1    ){$nstr = $bc->use32wideTObase     ;}  # big  base && digit str fit32reg  # CalcPP faster
#   else                                                               {$nstr = $bc->useTObaseShortcuts  ;}} # shortcuts faster for big numbers
# $nstr = $to->[0] unless length($nstr);
# if   (    $tref =~ /(DNA|HEX|B36)/){$nstr = uc $nstr;}   #    force upper case
# elsif(    $tref =~ /(dna|heX|b36)/){$nstr = lc $nstr;}   # or force lower case
# return($sign,$prefix,$nstr) if wantarray;
# if(#$prefix ne '' &&  # 0x, 0, 0b
#    $tbase <= $signedBase && $tref ne 'user'){return($sign . $prefix . $nstr);} # base in signed set
#                                              return(        $prefix . $nstr);}
sub txt8{ # KCKL8txt:txt8 2 stRt turning 8 k'z in2 any tXt thru CquNcz of top64 opr8nz gNr8d in autOm8d wAz (mAB initially from dic.log && U2b CC transcriptz);
  # 2du:split off $hwrd space-sepR8d multi-wordz && don't lc them into %dlog keyz,q avg word lengthz && b10 of all char valz,stuD dictd 4 getng avgz of all DB;
  # NAGM8Pow:this was a pretty crAZ IDa but it lookz lIk mAB just taking NE numb or b10(word) thN fInd clOsSt 2 it of Prim|Sum8|Fibo|Fact(n) or n**x 4 all valz
  #   or alsO just plAin n*m both clOs 2 sqrt of numb can B bSt stRtng plAc 2 thN just add or subtract rEmAning diff 2 get 4mUla 4 hUge d8a mAB wi ^ nstd of **
  #   && could pRNthesIz subXprSionz 2 fInd mOst compact set of b64 or 256 strngz && oper8ionz wich perfectly rEcover orig valU mAB wi symbolz 4 PrimSum8Fibo 2
  #   && add "power-tower" tetr8ion of n**n**n..**n (where n**n is n tetr8d by just 2,not n AgN&&cud B *** or ^*) wi PSFibo az utf8 Pi Sigma && Phi or smthng?;
  # NCNL0Tet:arOw nOt8ionz R Uzd 2 reprEsNt the hyper-oper8ions. XpOnNtE8ion is ↑, Tetr8n (rEPtd XpOnNtE8n) is ↑↑, pNt8n (rEPtd Tetr8n) is ↑↑↑, hX8n is ↑↑↑↑ …;
  #   altrn8ivly XpOnNtE8n canB Super-script 2 rIt, tetr8n Super-script 2 lFt, pNt8n Sub-script 2 lFt, hX8n mAB arOw in lFt Sub-script||bOth Sub&&Super2gethr?;
  #   mAB (add mul exp tet pen hex) + * **=^=↑ ***=^^=↑↑ ****=^^^=↑↑↑ *****=^^^^=↑↑↑↑ sO mAB I'd think 2 rEdFIn thEz 2 combIn such th@ 1^=4* && 1↑=4^=16* +mix;
  my $logd="$ENV{'HOME'}/.log";my  %dlog  ;my $strt;my $trgt; # setup LogDirectory && DicLog hash, then Dclare l8r-used b8-object references 4 start && target;
  mkdir (   $logd,0750) unless(-d "$logd");my $dlfn= $logd  .   '/dic.log'; # attempt to crE8 non-XistNt log-directory in User's ~ && setup DicLogFileName
  if    (    -e $dlfn){my $csum=0;my $ccnt=0;my $lsum=0;my $lcnt=0; # my $argz= join(' ',@_); # cavg:46.2; lavg:8.6; ccnt:15220; lcnt:1767; keyz:1767;
    open     my $out8,'>&',STDOUT or die "!*EROR*! Can't open  duplic8 STDOUT handle: $!";              binmode $out8,':encoding(UTF-8)';select($out8);$|=1;
    open     my $dlfh,'<' ,$dlfn  or die "!*EROR*! Couldn't open  dic log file:$dlfn for reading! $!\n";binmode $dlfh,':encoding(UTF-8)';
    while     (<$dlfh>){if(/^\s*[0-9A-Z._]{8}:(.+)$/i){my $hwrd=$1;$hwrd=~ s/\s*#.*//;$hwrd=~ s/(^\s+|\s+$)//g;print $out8 '.' unless($lcnt % 8);
        for  my $swrd (split(/\s+/,$hwrd)){if(exists($dlog{$swrd})){print $out8 "!$swrd;";}else{$dlog{$swrd}=1;} $lsum+=length($swrd);$lcnt++;
         for my $char (split(//   ,$swrd)){if($char=~ /^[0-9A-Z._]$/i){$csum+=b10($char);$ccnt++;}}}}}         say   $out8 '';
    close       $dlfh             or die "!*EROR*! Couldn't close dic log file:$dlfn! $!\n";
    if($csum && $ccnt){my $cavg=$csum/$ccnt;say $out8 "cavg:$cavg;";}
    if($lsum && $lcnt){my $lavg=$lsum/$lcnt;say $out8 "lavg:$lavg;";} say $out8 "ccnt:$ccnt;\nlcnt:$lcnt;\nkeyz:" . scalar(keys(%dlog)) . ";";
    close       $out8             or die "!*EROR*! Can't close duplic8 STDOUT handle: $!";}
  my @opr8=( # thought about just autom8ing inclusion of increasing Prime numbers as oper8ion parameters (&& may still), but beginning with (2**n)-1 2 Bgin;
    'plus___1', # 0 :add      incr
    'mnus___1', #    subtract decr
    'xmlt___2', #    'x' as "times" (double2) or Multiply
    'dvid___2', #    '/' as "2half" (halfby2) or Divide   (note: auto-integers afterward, dropping fractional parts in digitz past decimal-point, like floor);
    'expn___2', # 4 :Squared        ($x ** 2) ExponentE8
    'root___2', #    squaRe-Root    (Radical)
    'plus___3',
    'mnus___3',
    'xmlt___3', # 8
    'dvid___3', # 9 : ##     `b10 iiiiiiii`      iz?: b10:196,585,698,020,140    (also each piping thru cma 2 tri-group digitz in most typical long-numb styl);
    'expn___3', # A :cubed  ## `q 196585698020140xx3|cma` = 7,597,238,435,140,642,978,212,863,102,253,611,578,744,000 or as b64: LpP6,yx1E,agW5,QVJv,DgEx,mjp0;
    'plus___7',
    'mnus___7', # C
    'xmlt___7',
    'dvid___7',
    'plus__15',
    'mnus__15', # G
    'xmlt__15',
    'dvid__15',
    'plus__31',
    'mnus__31', # K
    'xmlt__31',
    'dvid__31',
    'plus__63',
    'mnus__63', # O
    'xmlt__63', # P :25                                        ; ## could have just Sum8 or Fact 4 current $strt 2, && mAB du lIk HP48GX RPN stacked oper8ionz;
    'dvid__63', # Q :26 as last ndx of 27 totl oper8ionz so far; ## mAB add PSFF NtrEz 4 selecting current $strt as int value of n-th as new valU or oper-pRam;
  );
  $strt=b10('k'    x 8);my $cqun='';      ## assuming 'i' x 8 ought 2 B much better more efficient start 4 avrg wordz than just 8 cud B;
  $trgt=b10('word'    ); # mAB try2 srch4 && autO-gNr8 whatever CquNc is nEded 2 get from stRt 8 2 tRget as @lEst 1 bAs-Ks 2 work with?;
  # srch thru ordrz of oper8nz wich can turn strt in2 trgt word filling cqun with opr8 ndxz as concatN8d b64 charz ...
  for(split(//,$cqun)){my $l=b10(   $_     )  ;
    if    ($opr8[$l] eq 'plus___1'){$strt++   ;
    }elsif($opr8[$l] eq 'mnus___1'){$strt--   ;
    }elsif($opr8[$l] eq 'xmlt___2'){$strt *= 2;
    }elsif($opr8[$l] eq 'dvid___2'){$strt /= 2;$strt  = int(     $strt );
    }elsif($opr8[$l] eq 'expn___2'){$strt**= 2;
    }elsif($opr8[$l] eq 'root___2'){$strt  =            int(sqrt($strt));
    }elsif($opr8[$l] eq 'plus___3'){$strt += 3;
    }elsif($opr8[$l] eq 'mnus___3'){$strt -= 3;
    }elsif($opr8[$l] eq 'xmlt___3'){$strt *= 3;
    }elsif($opr8[$l] eq 'dvid___3'){$strt /= 3;$strt  = int(     $strt );
    }elsif($opr8[$l] eq 'expn___3'){$strt**= 3;
    }elsif($opr8[$l] eq 'plus___7'){$strt += 7;
    }elsif($opr8[$l] eq 'mnus___7'){$strt -= 7;
    }elsif($opr8[$l] eq 'xmlt___7'){$strt *= 7;
    }elsif($opr8[$l] eq 'dvid___7'){$strt /= 7;$strt  = int(     $strt );
    }elsif($opr8[$l] eq 'plus__15'){$strt +=15;
    }elsif($opr8[$l] eq 'mnus__15'){$strt -=15;
    }elsif($opr8[$l] eq 'xmlt__15'){$strt *=15;
    }elsif($opr8[$l] eq 'dvid__15'){$strt /=15;$strt  = int(     $strt );
    }elsif($opr8[$l] eq 'plus__31'){$strt +=31;
    }elsif($opr8[$l] eq 'mnus__31'){$strt -=31;
    }elsif($opr8[$l] eq 'xmlt__31'){$strt *=31;
    }elsif($opr8[$l] eq 'dvid__31'){$strt /=31;$strt  = int(     $strt );
    }elsif($opr8[$l] eq 'plus__63'){$strt +=63;
    }elsif($opr8[$l] eq 'mnus__63'){$strt -=63;
    }elsif($opr8[$l] eq 'xmlt__63'){$strt *=63;
    }elsif($opr8[$l] eq 'dvid__63'){$strt /=63;$strt  = int(     $strt );
    }
  } # mAB prnt 8 ... oper8ion-CquNc ... Nd $strt 2 C if arriving @ $trgt correctly?
}
8;

=encoding utf8

=head1 NAME

Oct::b8 - Basic functions or BigFloat or Math::Base::Convert objects for Base-transl8ions

=head1 VERSION

This document8ion refers to version 0.0 of Oct::b8, which was released on 
.

=head1 SYNOPSIS

  #!/usr/bin/perl
  use strict;use warnings;use utf8;use v5.10;use Oct::b8;

       # Base-transl8       63 from base-10 (decimal) to base- 2 (binary )
  my $binary__63 = b8(      63 , 10,  2 );
       # Base-transl8   111111 from base- 2 (binary ) to base-16 (HEX    )
  my $HEX_____63 = b8(  111111 ,  2, 16 );
       # Base-transl8       3F from base-16 (HEX    ) to base-10 (decimal)
  my $decimal_63 = b8(     '3F', 16, 10 );
  say "63 dec->bin $binary__63 bin->HEX $HEX_____63 HEX->dec $decimal_63";

=head1 DESCRIPTION

b8 provides a few simple functions (which also should serve as similar object methods) for converting between arbitrary number bases.

=head1 PURPOSE

b8 was crE8d to intuitively handle transl8ions between arbitrary number bases as either exported functions or objects which inherit from BigFloat such that
they can be incorpor8d into rel8ively normal looking math equ8ions for manipul8ion but will stringify configurably into the destin8ion "to-base" by default.
Some attempt is made to store a cache of multiple values along with performed conversions within each object, to make repeated use more efficient.

=head1 USAGE

=head2 new()

This is the standard b8 object constructor.

=head2 b8($numb[,$from[,$tobs]])

Base-transl8 the number contained in $numb from its current number base ($from) into the result number base ($tobs).

Note: The rules corresponding to absent parameters described here may well be out-of-d8.

B<When only $numb is provided as a parameter:>

If $numb only contains valid decimal (base 10) digits, it will be converted to base 64.

If $numb only contains valid hexadecimal (base 16) digits && begins with '0x', it will be converted to decimal (base 10).

If $numb only contains valid base 64 characters                              , it will be converted to decimal (base 10).

B<When only $numb && $from are provided as parameters:>

If $numb only contains valid decimal (base 10) digits && $from is not equal to 10, $from will be used as $tobs && $from will become 10.

Otherwise $numb will be converted to decimal (base 10).

B<When all three parameters are provided:>

The normal (&& most clear) usage of b8() is to provide all three parameters where $numb is converted from $from base to $tobs.

=head2 cnv($numb[,$from[,$tobs]])

cnv() is an altern8 way to call b8(). It is short for CoNVert and is available for compatibility with the original L<Math::BaseCnv> interface.

=head2 b10($b64n)

A shortcut to convert the number given as a parameter ($b64n) from base 64 to decimal (base 10). b64() is the inverse of b10().

=head2 b64($b10n)

A shortcut to convert the number given as a parameter ($b10n) from decimal (base 10) to base 64. b10() is the inverse of b64().

=head2 b64sort(@b64s)

A way to sort b64 strings as though they were decimal numbers.

=head2 b128($b10n)

A shortcut to convert the number given as a parameter ($b10n ) from decimal (base 10) to base 128. b110() is the inverse of b128().
b128() uses UTF-8 Chess and Cards characters for the top 64 (half).

=head2 b110($b128n)

A shortcut to convert the number given as a parameter ($b128n) from base 128 to decimal (base 10). b128() is the inverse of b110().

=head2 b256($b10n)

A shortcut to convert the number given as a parameter ($b10n ) from decimal (base 10) to base 256. b210() is the inverse of b256().
b256() uses UTF-8 accent characters for the top 128 (half).

=head2 b210($b256n)

A shortcut to convert the number given as a parameter ($b256n) from base 256 to decimal (base 10). b256() is the inverse of b210().

=head2 b93k($b10n)

A shortcut to convert the number given as a parameter ($b10n ) from decimal (base 10) to base 93k. b910() is the inverse of b93k().

=head2 b910($b93kn)

A shortcut to convert the number given as a parameter ($b93kn) from base 93100 to decimal (base 10). b93k() is the inverse of b910().

=head2 dec($b16n)

A shortcut to convert the number given as a parameter ($b16n) from HEXadecimal (base 16) to decimal (base 10).  HEX() or heX() is the inverse of dec().
dec() is similar to Perl's built-in hex().

=head2 HEX($b10n)

A shortcut to convert the number given as a parameter ($b10n) from decimal (base 10) to HEXadecimal (base 16) uppercase. dec() is the inverse of HEX();

=head2 heX($b10n)

A shortcut to convert the number given as a parameter ($b10n) from decimal (base 10) to heXadecimal (base 16) lowercase. dec() is the inverse of heX();

Please read the L<"NOTES"> regarding heX().

=head2 deC($bs8n)

A shortcut to convert the number given as a parameter ($bs8n) from   ocTal (base  8) to decimal (base 10).

=head2 ocT($b10n)

A shortcut to convert the number given as a parameter ($b10n) from decimal (base 10) to   ocTal (base  8).

=head2 dig(\@newd)

Assign the new digit character list to be used in place of the default one. dig() can also alternately accept a string name matching one of the
following predefined digit sets:

  'bin' => ['0', '1'],
  'dna' => ['a', 'c', 'g', 't'],
  'DNA' => ['A', 'C', 'G', 'T'],
  'ocT' => ['0'..'7'],
  'dec' => ['0'..'9'],
  'heX' => ['0'..'9', 'a'..'f'],
  'HEX' => ['0'..'9', 'A'..'F'],
  'b36' => ['0'..'9', 'a'..'z'],
  'B36' => ['0'..'9', 'A'..'Z'],
  'b62' => ['0'..'9', 'a'..'z', 'A'..'Z'],
  'b64' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_'], # max Month:C:12 Day:V:31
  'm64' => ['A'..'Z', 'a'..'z', '0'..'9', '+', '/'], # MIME::Base64 0..63
  'iru' => ['A'..'Z', 'a'..'z', '0'..'9', '[', ']'], # P10 server-server protocol used by IRCu daemon
  'url' => ['A'..'Z', 'a'..'z', '0'..'9', '-', '_'], # MIME::Base64::URLSafe which avoids %2B && %2F expansions of '+' && '/' respectively (U2b ID likely this)
  'rgx' => ['A'..'Z', 'a'..'z', '0'..'9', '!', '-'], # Regular EXpression variant
  'id0' => ['A'..'Z', 'a'..'z', '0'..'9', '_', '-'], # IDentifier style 0
  'id1' => ['A'..'Z', 'a'..'z', '0'..'9', '.', '_'], # IDentifier style 1
  'xnt' => ['A'..'Z', 'a'..'z', '0'..'9', '.', '-'], # XML Name Tokens (Nmtoken)
  'xid' => ['A'..'Z', 'a'..'z', '0'..'9', '_', ':'], # XML identifiers (Name   )
  'sxl' => ['?', '@', 'A'..'Z', '[','\\', ']', '^',  # Sixel Base64 from VT100.Net
            '_', '`', 'a'..'z', '{', '|', '}', '~'],
  'b85' => ['0'..'9', 'A'..'Z', 'a'..'z', '!', '#',  # RFC 1924 for IPv6 addresses like in Math::Base85
            '$', '%', '&', '(', ')', '*', '+', '-',
            ';', '<', '=', '>', '?', '@', '^', '_',
            '`', '{', '|', '}', '~'               ],
  'asc' => [' ', '!', '"', '#', '$', '%', '&', "'",  # Base96 7-bit printable 0x20 (space) - 0x7F
            '(', ')', '*', '+', ',', '-', '.', '/',  #   (tilde ~) 'ascii' from Math::Base::Convert
            '0'..'9', ':', ';', '<', '=', '>', '?',
            '@', 'A'..'Z', '[','\\', ']', '^', '_',
            '`', 'a'..'z', '{', '|', '}', '~'     ],
  'b96' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base96 but starting with b64 characters
            ' ', '!', '"', '#', '$', '%', '&', "'",
            '(', ')', '*', '+', ',', '-', '/', ':',
            ';', '<', '=', '>', '?', '@', '[','\\',
            ']', '^', '`', '{', '|', '}', '~'     ],
  '128' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base128 but starting with b64 characters (blacK chS pibrq before White, then cRdz sHDc, then k && K)
            '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕', '🂡', '🂱', '🃁', '🃑', '🂢', '🂲', '🃂', '🃒', '🂣', '🂳', '🃃',
            '🃓', '🂤', '🂴', '🃄', '🃔', '🂥', '🂵', '🃅', '🃕', '🂦', '🂶', '🃆', '🃖', '🂧', '🂷', '🃇', '🃗', '🂨', '🂸', '🃈', '🃘',
            '🂩', '🂹', '🃉', '🃙', '🂪', '🂺', '🃊', '🃚', '🂫', '🂻', '🃋', '🃛', '🂭', '🂽', '🃍', '🃝', '🂮', '🂾', '🃎', '🃞', '♚', '♔'],
  '256' => ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_',  # Base256 but starting with b128characters (then appending the 128 most common accented characters)
            '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕', '🂡', '🂱', '🃁', '🃑', '🂢', '🂲', '🃂', '🃒', '🂣', '🂳', '🃃',
            '🃓', '🂤', '🂴', '🃄', '🃔', '🂥', '🂵', '🃅', '🃕', '🂦', '🂶', '🃆', '🃖', '🂧', '🂷', '🃇', '🃗', '🂨', '🂸', '🃈', '🃘',
            '🂩', '🂹', '🃉', '🃙', '🂪', '🂺', '🃊', '🃚', '🂫', '🂻', '🃋', '🃛', '🂭', '🂽', '🃍', '🃝', '🂮', '🂾', '🃎', '🃞', '♚', '♔', # shud ck if BlO =~ /[A-Z]/
            'À','Á','Â','Ã','Ä','Å','Æ','Ç',  'È','É','Ê','Ë','Ì','Í','Î','Ï',  'Ð','Ñ','Ò','Ó','Ô','Õ','Ö','×',  'Ø','Ù','Ú','Û','Ü','Ý','Þ','ß',
            'à','á','â','ã','ä','å','æ','ç',  'è','é','ê','ë','ì','í','î','ï',  'ð','ñ','ò','ó','ô','õ','ö','÷',  'ø','ù','ú','û','ü','ý','þ','ÿ',
            'Ā','ā','Ă','ă','Ą','ą','Ć','ć',  'Ĉ','ĉ','Ċ','ċ','Č','č','Ď','ď',  'Đ','đ','Ē','ē','Ĕ','ĕ','Ė','ė',  'Ę','ę','Ě','ě','Ĝ','ĝ','Ğ','ğ',
            'Ġ','ġ','Ģ','ģ','Ĥ','ĥ','Ħ','ħ',  'Ĩ','ĩ','Ī','ī','Ĭ','ĭ','Į','į',  'İ','ı','Ĳ','ĳ','Ĵ','ĵ','Ķ','ķ',  'ĸ','Ĺ','ĺ','Ļ','ļ','Ľ','ľ','Ŀ']);

Note: The above documented 256 characters are old && out-of-d8 as of O3HMCHAR so should be upd8d to have encircled && 6-dot Braille sets of 64 for the latter
half of b256. The order of playing cards between 64 && 127 has changed a few times too. There is also now a new '93k' set with exactly 93100 characters that
start with my current favorite single-width 256 which are exclusively followed by 92844 double-width CJK calligraphy Kanji script blocks. 93k as digit-set
usually works pretty well as the default which covers almost all my use-cases.

If no \@newd list or digit set name is provided as a parameter, dig() returns the current character list. It's fine to have many more characters
in your current digit set than will be used with your conversions (e.g., using dig('93k') works fine for any b8() conversion call where $from and $tobs
parameters are less than or equal to 93100).

An example of a \@newd parameter for a specified alternate digit set for (up-to) base-9 conversions is:

  dig( [ qw( n a c h o z   y u m ) ] );

=head2 diginit()

Resets the used digit list to the initial default order of the predefined digit set: '93k'. This is simply a shortcut for calling dig('93k') for
re-initializ8ion purposes.

=head2 Prim($numb) or Prmz($lndx)

A simple function to calcul8 a memoized BigInt of the index $numb (th) prime (non-composite) number.

For all the varE8ionz which pluralIze && end with low-zed, they accept a line-number index (default 47 as of O3HMBase) up to which will be printed output
lines which almost needed to wrap around the detected terminal column-width. This is mainly to streamline displaying a single solid page-full of each provided
progressive sequence (which probably itself is: continuous, rapidly-ascending, and infinite in length conceptually, among other note-worthy properties).

Referring to (or just gazing in wonderment at) consistent formatted uniform values && patterns through dense arcs which emerge from the layered acceler8ing
growth of their steadfast quantities just being packed in order tightly is a way I find grants me a broadening "overview" high-level perspective on the slopes
such important expansion curves follow.

After the last-line-index value is given to a plural sequence print routine, a single additional parameter option may be given as either a 1 or a 2 (which get
interpreted as enabling either Base-64 or Base-256 respectively, instead of the usual familiar inferior default Base-10 "Ten" Decimal). It's also possible to
pipe such output through a desired value-converter, coloring-filter, or other post-processes which may specialize for purposes much deeper && farther than
whatever the base-line formula && typical intuition about effective regularity of value distribution seems likely to be able to get most observers to grasp.

    Prmz 63 2 | b8c; # from the shell, or Perl: say b8c(Prmz(63,2)); should show pretty nicely;

=head2 Sum8($numb) or Sumz($lndx)

A simple function to calcul8 a          BigFloat summ8ion  of $numb down to 1. This used to loop down like Fact, but was replaced with a basic multiply.

=head2 Fibo($numb) or Fibz($lndx)

A simple function to calcul8 a memoized BigInt   Fibonacci    $numb.

=head2 Fact($numb) or Fctz($lndx)

A simple function to calcul8 a memoized BigInt   factorial of $numb.

=head2 Chus($ennn, $emmm)

A simple function to calcul8 a memoized BigInt   function  of $ennn choose $emmm. This is a fundamental function implementing a fantastic formula for finding
particular possibilities && probabilities of precise orders of heterogenous pieces of the proper problem's puzzle where permut8ions of the production (or
picking a selection) of sub-parts occur in accordance with the Combin8orics branch of Math. The simple useful "n-choose-m" formula is basically:

    n! / (m! * (n-m)!)

=head2 Xpn8($numb) or Xpnz($lndx)

A simple function to calcul8 a BigInt exponentiation of $numb raised to the $numb power.

=head2 Ttr8($numb) or Ttrz($lndx)

A tricky (possibly wrong) function to calcul8 a BigInt Tetr8ion of $numb. It should be close to $numb raised to the $numb power, which is then multiplied by
itself $numb more times (I think).

=head2 Pnt8($numb) or Pntz($lndx)

A crazy probably useless wrong function to calcul8 a BigInt Pent8ion of $numb. This should yield the value of Ttr8($numb) raised further to the $numb power.

=head2 Hex8($numb) or Hexz($lndx)

A crazy wrong probably useless function to calcul8 a BigInt Hex8ion of $numb. Such meta-oper8ionz increase so fast, they can scarcely be conceived of.

=head2 rotW($b64s)

A simple function to rot8 the base-64  string $b64s  by  32. rotW() is similar to vim's Virtual selection then 'g?' rot13 command, just working with more
characters. Note that when you make a vim Virtual-mode selection then :!rotW in Command-mode, it only works on whole lines (not Ctrl-v column selections).

=head2 rot1($b256s)

A simple function to rot8 the base-256 string $b256s by 128. rot1() is similar to vim's Virtual selection then 'g?' rot13 command, just working with more
characters. Note that when you make a vim Virtual-mode selection then :!rot1 in Command-mode, it only works on whole lines (not Ctrl-v column selections).

=head2  cma($b10ns)

A simple function which takes a base-10 number-string as input && returns it filled with comma ',' characters at the typical thousands, millions, billions,
etc. places between triplets of decimal digits.

=head2 coma($banys)

Another simple function very similar to cma() above except this one by default inserts comma ',' characters around every cluster of four (4) characters (which
no longer need to just consist of 0..9 decimal digits).

=head2 calQ($mequs)

This is an incomplete utility which accepts Math-Equ8ion-String parameters which will try to get parsed for BigFloat values && oper8ions to calcul8 together.

!*Warning*!: PEMDAS is *NOT* followed! Parentheses are not handled at all yet && other expected oper8ion-orders may remain unavailable or maybe just
potentially quite surprisingly non-default. Complex calQl8ions may often require several stages of tedious sub-processing && manual re-entry or substitutions.

calQ (often shortened to just 'Q' or 'q' in the shell) was just crE8d quickly to expose some really huge BigInt math to my GNU/Linux Z-shell command-
interpreter outside of Perl as well as to support several simple options which suit me, like letters as mnemonic altern8ives to standard oper8ors, so:

  p -> +
  m -> -   # or s(ubtract)? wertherothrz2?
  x -> *   # && xx works for exponentE8ion
  d -> /

=head2 b8b2()

These were experimental functions which convert raw binary file-d8a into easily text-editable HEXadecimal, b64, && b256 formats back && forth losslessly
(handling possible ambiguity with exact number of bytes design8d at the end).

This b8b2() handles converting texts to binaries, while b2b8 below performs the inverse function of ballooning binaries back into big bloated text strings.

=head2 b2b8()

The inverse of b8b2(), this b2b8() accepts the path to any filename && outputs limited text from whatever raw binary d8a may have originally been represented.

=head2 txt8()

A weird experiment to try searching through possible sets of equ8ions && formulas to determine if any specifically desired target text could altern8ly be
specified just by some number of cryptic sets of formulas, perhaps very efficiently for some usage scenarios. I wondered && started weak, but didn't get far.

=head2 zpad()

A very simple left-side zero-padding function for strings. It just takes the pad-size as integer (2 default) && the string to pad.

Maybe sprintf or Perl6::Form would be the better ways to do this kind of thing standardly? Now I don't remember what I might have wanted my own zpad for. Hmm.

=head1 NOTES

The Perl built-in hex() function takes a HEXadecimal string as a parameter and returns the decimal value (FromBase = 16, ToBase = 10). This not8ion was
counter-intuitive to me. I prefer to read the code as though my HEX() function will turn the parameter into HEXadecimal i.e., I think of HEX() as
going to "HEXify" my parameter, but Perl's built-in does the opposite. I initially decided to invert the not8ion from Perl's built-in for my similar functions,
so I originally redefined hex() with such reversed behavior, but I have since reconsidered the potential harm possible by introducing exported conflicting
opposite behavior into other people's maybe critical code-bases. So I have fallen back on employing unique letter-casing with my HEX() and heX() routines, and
I am now leaving the built-in hex() unmolested.

My b64() function takes a decimal number as a parameter and returns the base64 equivalent (FromBase = 10, ToBase = 64) and my b10() function takes a base64
number (string) and returns the decimal value (FromBase = 64, ToBase = 10). My HEX() and heX() functions oppose Perl's built-in hex() (which is similar to my
dec() routine). HEX() returns uppercase and heX() returns lowercase.

Please think of my dec() and HEX() + heX() functions as meaning "decify" and "HEXify". Also my preferred pronunC8ion of dec() is like "dess" (not "deck").

Error checking is minimal.

This module now handles preliminary fractional b64 numbers using the percent '%' character as the sepR8or from the integer component. Hopefully the caret '^'
can l8r be added as the sepR8or for an exponent field, with little conflict on the command-line. I think two carets in popular shells tries to substitute
within command history, but a single caret may be left alone and not require escaping.

Sum8(), Fact(), Chus(), and Fibo() are general Math function utilities which are unrel8d to number-base conversion but I didn't feel like making another
sepR8 module just for them so they snuck in here.

I hope you find Oct::b8 useful. L8r.

=head1 CHANGES

Revision history for Perl extension Oct::b8:

=over 2

=item - 0.0 H5MM2nT7  Mon May 22 02:49:29:07 -0500 2017

* renamed bb10 to b110 (as opposite of b128), which now better matches b210 (turning b256 into base-10 decimal)

=item - 0.0 G7OMBm7O  Sun Jul 24 11:48:07:24 -0500 2016

* added digit set 'b96' like 'asc' but starting with preferred default b64 characters

* renumbered and upd8d t/*.t

* rewrote originally memoized summ loop as sum8 with single BigFloat multiply && added fibo

* attempted to extend main conversion routines to allow piping values from STDIN as an altern8ive to the original parameter interface

* rewrote defaults to favor b64 && compacted spacing

* upd8d available dig lists (adding b36 && asc)

* added b64colr just for basic ANSI Escape coloring to start with, then generalized to b8color && moved it over to a8::b8colr then a8::b8c

* migr8d Math::BaseCnv over to Oct::b8

=back

=head1 TODO

=over 2

=item - employ Math::Base::Convert objects beneath classic subroutine interface && start transitioning to objects

=item - handle neg8ion && fractional parts with percent as frac sep && caret for exponent, or pound, colon, or better sepR8ors

=item - allow cnv() to be piped thru like b8()

=item - better error checking && testing (&& benchmark?)

=back

=head1 INSTALL

From the command shell, please run:

  `perl -MCPAN -e "install Oct::b8"`

or uncompress the package and run the standard:

  `perl Makefile.PL; make; make test; make install`

=head1 FILES

Oct::b8 requires:

L<Math::Base::Convert>   to sub-class fast number objects from

L<Math::BigFloat>        to allow Big         sum8()                    results

L<Math::BigInt>          to allow Big fact(), choo(), fibo(), && prim() results

L<Memoize>               to cache     fact(), choo(), fibo(), && prim() results

L<Carp>                  to allow errors  to croak() from calling sub

=head1 LICENSE

Most source code should be Free! Code I have lawful authority over is and shall be!
CopyRight:(c) 2003-2020, Pip Stuart.
CopyLeft : This software is licensed under the GNU General Public License
  (version 3 or l8r). Please consult L<HTTPS://GNU.Org/licenses/gpl-3.0.txt>
  for important inform8ion about your freedom. This is Free Software: you
  are free to change and redistribute it. There is NO WARRANTY, to the
  extent permitted by law. See L<HTTPS://FSF.Org> for further inform8ion.

=head1 AUTHOR

Pip Stuart <Pip@CPAN.Org>

=cut
