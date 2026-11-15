#!/usr/bin/env perl
use utf8;use v5.22;use Test2::V0 qw(!E !F); # both modulez Xport F() && a8 wil probably Xp E() soon too so masked thOz out from Test2::V0 Uz;
use FindBin qw($RealBin);use lib "$RealBin/../lib";use Oct::a8;
# HARNESS-DURATION-SHORT
plan tests => 64;my $d8VS='QBELFcdu'; # just dupl8c8d all of a8.pm's exportz above as importz here but removed F (sprintf) since provided by Test2::V0 too!;
                 # use Test::More skip_all => $reason; require_ok( 'Some::Module' ); # mAB see pdoc Test2::Suite or Test2::V0 4 l8St *.t lIk Test::More;
# ok    ($got   eq   $expected , $test_name);   cmp_ok($got, '==', $expected , $test_name); # Various ways to say "ok"…
# is    ($got,       $expected , $test_name);     like($got,     qr/expected/, $test_name); pass($test_name); can_ok($module, @methods);
# isnt  ($got,       $expected , $test_name);   unlike($got,     qr/expected/, $test_name); fail($test_name); isa_ok($object, $class  );
# is_deeply($got_complex_structure, $expected_complex_structure,               $test_name);
# TODO: { local $TODO = $why ;                  SKIP: { skip $why, $how_many unless $have_some_feature;
#   ok( foo(  ),                 $test_name);     ok( foo(  ),                 $test_name);
#   is( foo(42),            23 , $test_name);};   is( foo(42),            23 , $test_name);};
# diag  ("here's what went wrong"); # Rather than print STDERR "# here's what went wrong\n" ; # does Test2::Plugin or Command have warn && othr outz too?;
# BAIL_OUT($why); # mAB Test2::Suite is newer && somehow better than old Test::More or Simple?
#   See Test2::Tools::Basic  :                                   See Test2::Tools::Compare             :
# ok  ($bool,   $name)       ; plan(         $count)      ;      is  ($got,        $want ,  $name     );  $ck = bag|meta|hash|array|object { ... };
# ok  ($bool,   $name, @diag); skip($reason, $count)      ;      isnt($got, $do_not_want ,  $name     );  $ck=    in_set(@things);$ck=number($num);
# pass(         $name)       ; todo $reason => sub { ... };      like($got,     qr/match/,  $name     );  $ck=not_in_set(@things);$ck=string($str);
# pass(         $name, @diag); $todo = todo($reason)      ;    unlike($got,  qr/mismatch/,  $name     );  $check = check_isa($class_name)         ;
# fail(         $name)       ;     skip_all($reason)      ;    $check =            match( qr/pattern/ );
# fail(         $name, @diag);     bail_out($reason)      ;    $check =         mismatch( qr/pattern/ );
# diag($message);note( $mesg); done_testing() $tstz_pland?;    $check = validator(sub { return $bool });
ok  ($Oct::a8::d8VS =~  /^[O-Za-z._][0-9A-C][0-9A-V]/ ,  "t00:  d8VS:>=O; "); # 0th (1st) tSt d8VS Year 2024 @lEst; 2du:colr my out hEr 2?;
ok  (     0  == $sb210{    0 },  "     sb210:  0; ");
ok  (     1  == $sb210{    1 },  "     sb210:  1; ");
ok  (     9  == $sb210{    9 },  "     sb210:  9; ");
ok  (    10  == $sb210{    A },  "     sb210:  A; ");
ok  (    35  == $sb210{    Z },  "     sb210:  Z; ");
ok  (    36  == $sb210{    a },  "     sb210:  a; ");
ok  (    61  == $sb210{    z },  "t07: sb210:  z; "); # 7th (8th) tSt
ok  (    62  == $sb210{  '.' },  "     sb210:  .; ");
ok  (    63  == $sb210{    _ },  "     sbten:  _; ");
ok  (   'A'  eq $sb256[   10 ],  "     sb256:  A; ");
ok  (   'Z'  eq $sb256[   35 ],  "     sb256:  Z; ");
ok  (   'a'  eq $sb256[   36 ],  "     sb256:  a; ");
ok  (   'z'  eq $sb256[   61 ],  "     sb256:  z; ");
ok  (   '.'  eq $sb256[   62 ],  "t0F: sb256:  .; ");
ok  (   '_'  eq $sb256[   63 ],  "     sb256:  _; "); # 2du:mAinly nEd 2 tSt S && c B4 mapng out gAm-plan 4 tStng all the othr Xportz;
ok  (   '♟'  eq $sb256[   64 ],  "     sb256:  ♟; ");
ok  (   '♕'  eq $sb256[   73 ],  "     sb256:  ♕; ");
ok  (   '🃁'  eq $sb256[   74 ],  "     sb256:  🃁; ");
ok  (   '🂾'  eq $sb256[   99 ],  "     sb256:  🂾; ");
ok  (   '🃑'  eq $sb256[  100 ],  "     sb256:  🃑; ");
ok  (   '♔'  eq $sb256[  127 ],  "t0M: sb256:  ♔; ");
ok  (   '⓪'  eq $sb256[  128 ],  "     sb256:  ⓪; ");
ok  (   '⑨'  eq $sb256[  137 ],  "     sb256:  ⑨; ");
ok  (   'Ⓐ'  eq $sb256[  138 ],  "     sb256:  Ⓐ; ");
ok  (   'Ⓩ'  eq $sb256[  163 ],  "     sb256:  Ⓩ; ");
ok  (   'ⓐ'  eq $sb256[  164 ],  "     sb256:  ⓐ; ");
ok  (   'ⓩ'  eq $sb256[  189 ],  "t0S: sb256:  ⓩ; ");
ok  (   'ʘ'  eq $sb256[  190 ],  "     sb256:  ʘ; ");
ok  (   'Ɵ'  eq $sb256[  191 ],  "     sb256:  Ɵ; ");
ok  (   '⠀'  eq $sb256[  192 ],  "     sb256:  ⠀; "); # blank Braille wich shud probably Bcom visible slightly instead of just like spAce;
ok  (   '⠿'  eq $sb256[  255 ],  "t0W: sb256:  ⠿; ");
for (0..31){my $pr256=int(rand(256)); # seed probably betr 4 rEprOducibl tSt setz l8r?;
  my $b256c =  $sb256[$pr256]; # mAB try 2 use b8.pm && wrap b256() alsO?;
# ok($b256c eq $sb210{$b256c},  "     sb210:  $b256c; "); # 33 or 32 BlOw?;
  ok($pr256 eq $pr256        , "t0" . $sb256[32+$_] . sprintf(": pr%3d:  %.1s;",$pr256,$b256c));} # 2du:fix tSt 2 ck 4 Equalz smthng && fix sp() wrap-around;
# our @EXPORT= qw($z    $k    $r    $o    $y    $g     $c   $Sb    $m    $p    $w  tstc    $K    $R    $O    $Y    $G    $C    $B    $M    $P    $W upd8   …);
#  of 52 posibl sngl-letr var nAmz,a8 Xportd 20,$b && $a unavail,sOshudB thEz 30 lFt4quik shortSt nAmz: 'def hij l n  q stuv x', 'A  DEF HIJ L N  Q STUV X Z';
# 10240 2800 2W0⠀⠁⠂⠃⠄⠅⠆⠇8⠈⠉⠊⠋⠌⠍⠎⠏G⠐⠑⠒⠓⠔⠕⠖⠗O⠘⠙⠚⠛⠜⠝⠞⠟W⠠⠡⠢⠣⠤⠥⠦⠧e⠨⠩⠪⠫⠬⠭⠮⠯m⠰⠱⠲⠳⠴⠵⠶⠷u⠸⠹⠺⠻⠼⠽⠾⠿: HTTPS://Symbl.CC/en/search/?q=Braille 2800-28FF; `u8 10240 10496|sS`;
# 10304 2840 2X0⡀⡁⡂⡃⡄⡅⡆⡇8⡈⡉⡊⡋⡌⡍⡎⡏G⡐⡑⡒⡓⡔⡕⡖⡗O⡘⡙⡚⡛⡜⡝⡞⡟W⡠⡡⡢⡣⡤⡥⡦⡧e⡨⡩⡪⡫⡬⡭⡮⡯m⡰⡱⡲⡳⡴⡵⡶⡷u⡸⡹⡺⡻⡼⡽⡾⡿:
# 10368 2880 2Y0⢀⢁⢂⢃⢄⢅⢆⢇8⢈⢉⢊⢋⢌⢍⢎⢏G⢐⢑⢒⢓⢔⢕⢖⢗O⢘⢙⢚⢛⢜⢝⢞⢟W⢠⢡⢢⢣⢤⢥⢦⢧e⢨⢩⢪⢫⢬⢭⢮⢯m⢰⢱⢲⢳⢴⢵⢶⢷u⢸⢹⢺⢻⢼⢽⢾⢿:
# 10432 28C0 2Z0⣀⣁⣂⣃⣄⣅⣆⣇8⣈⣉⣊⣋⣌⣍⣎⣏G⣐⣑⣒⣓⣔⣕⣖⣗O⣘⣙⣚⣛⣜⣝⣞⣟W⣠⣡⣢⣣⣤⣥⣦⣧e⣨⣩⣪⣫⣬⣭⣮⣯m⣰⣱⣲⣳⣴⣵⣶⣷u⣸⣹⣺⣻⣼⣽⣾⣿:
###    'À','Á','Â','Ã','Ä','Å','Æ','Ç',  'È','É','Ê','Ë','Ì','Í','Î','Ï',  'Ð','Ñ','Ò','Ó','Ô','Õ','Ö','×',  'Ø','Ù','Ú','Û','Ü','Ý','Þ','ß',
###    'à','á','â','ã','ä','å','æ','ç',  'è','é','ê','ë','ì','í','î','ï',  'ð','ñ','ò','ó','ô','õ','ö','÷',  'ø','ù','ú','û','ü','ý','þ','ÿ',
###    'Ā','ā','Ă','ă','Ą','ą','Ć','ć',  'Ĉ','ĉ','Ċ','ċ','Č','č','Ď','ď',  'Đ','đ','Ē','ē','Ĕ','ĕ','Ė','ė',  'Ę','ę','Ě','ě','Ĝ','ĝ','Ğ','ğ',
###    'Ġ','ġ','Ģ','ģ','Ĥ','ĥ','Ħ','ħ',  'Ĩ','ĩ','Ī','ī','Ĭ','ĭ','Į','į',  'İ','ı','Ĳ','ĳ','Ĵ','ĵ','Ķ','ķ',  'ĸ','Ĺ','ĺ','Ļ','ļ','Ľ','ľ','Ŀ',
#           '♟', '♙', '♞', '♘', '♝', '♗', '♜', '♖', '♛', '♕',
#           '🃁', '🃂', '🃃', '🃄', '🃅', '🃆', '🃇', '🃈', '🃉', '🃊', '🃋', '🃍', '🃎',
#           '🂱', '🂲', '🂳', '🂴', '🂵', '🂶', '🂷', '🂸', '🂹', '🂺', '🂻', '🂽', '🂾',
#           '🃑', '🃒', '🃓', '🃔', '🃕', '🃖', '🃗', '🃘', '🃙', '🃚', '🃛', '🃝', '🃞',
#           '🂡', '🂢', '🂣', '🂤', '🂥', '🂦', '🂧', '🂨', '🂩', '🂪', '🂫', '🂭', '🂮',
#           '♚', '♔', # 2du:try 23FB powr symbol 4 0 && 2460..2468 && du b64z;
#           '⓪', '①', '②', '③', '④',
#           '⑤', '⑥', '⑦', '⑧', '⑨',
#           'Ⓐ', 'Ⓑ', 'Ⓒ', 'Ⓓ', 'Ⓔ', 'Ⓕ', 'Ⓖ', 'Ⓗ',  # 'Ⓜ',
#           'Ⓘ', 'Ⓙ', 'Ⓚ', 'Ⓛ', 'Ⓜ', 'Ⓝ', 'Ⓞ', 'Ⓟ', # M iz lIk dbl-wId othrz!
#           'Ⓠ', 'Ⓡ', 'Ⓢ', 'Ⓣ', 'Ⓤ', 'Ⓥ', 'Ⓦ', 'Ⓧ', 'Ⓨ', 'Ⓩ',
#           'ⓐ', 'ⓑ', 'ⓒ', 'ⓓ', 'ⓔ', 'ⓕ', 'ⓖ', 'ⓗ',
#           'ⓘ', 'ⓙ', 'ⓚ', 'ⓛ', 'ⓜ', 'ⓝ', 'ⓞ', 'ⓟ', # oops! only did 192;
#           'ⓠ', 'ⓡ', 'ⓢ', 'ⓣ', 'ⓤ', 'ⓥ', 'ⓦ', 'ⓧ', 'ⓨ', 'ⓩ', 'Ø', 'Ī',
## 10240 2800 2W0⠀⠁⠂⠃⠄⠅⠆⠇8⠈⠉⠊⠋⠌⠍⠎⠏G⠐⠑⠒⠓⠔⠕⠖⠗O⠘⠙⠚⠛⠜⠝⠞⠟W⠠⠡⠢⠣⠤⠥⠦⠧e⠨⠩⠪⠫⠬⠭⠮⠯m⠰⠱⠲⠳⠴⠵⠶⠷u⠸⠹⠺⠻⠼⠽⠾⠿:; # 2du:just add this quOtd commad split optn 2 UTF8 az u8;
#           '⠀', '⠁', '⠂', '⠃', '⠄', '⠅', '⠆', '⠇',  '⠈', '⠉', '⠊', '⠋', '⠌', '⠍', '⠎', '⠏',
#           '⠐', '⠑', '⠒', '⠓', '⠔', '⠕', '⠖', '⠗',  '⠘', '⠙', '⠚', '⠛', '⠜', '⠝', '⠞', '⠟',
#           '⠠', '⠡', '⠢', '⠣', '⠤', '⠥', '⠦', '⠧',  '⠨', '⠩', '⠪', '⠫', '⠬', '⠭', '⠮', '⠯',
#           '⠰', '⠱', '⠲', '⠳', '⠴', '⠵', '⠶', '⠷',  '⠸', '⠹', '⠺', '⠻', '⠼', '⠽', '⠾', '⠿',
