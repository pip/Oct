#!/usr/bin/env perl
# 2du:Chax said:"For future improvements, three findings stand out:
# -Arithmetic  : 03d8-03math.t script currently asserts only ok(1); calQl8ions are printed, without checking expected results. I don't knO wut math 2 tSt yet;
# -Object tests: 01b8-03bobj.t exits after its first assertion, leaving the object exercises below it unexecuted.    b8.pm doesn't have a new() 4 objects yet;
# -Portability : 00a8-03Sorc.t document dependencies and make the color test’s terminal assumptions explicit."
# Tests S()/c() round trips under the xterm-256color profile.
# Requires TERM=xterm-256color before Oct::a8 loads.
# No actual display, terminal emul8or, or attached TTY is required.
BEGIN { $ENV{TERM} = 'xterm-256color'; }
use utf8;use v5.22;use Test2::V0 qw(!E !F);
use FindBin qw($RealBin);use lib "$RealBin/../lib";use Oct::a8;
# HARNESS-DURATION-SHORT
plan tests =>384;my $d8VS='QAHM8888'; # just dupl8c8d all of a8.pm's exportz above as importz here but removed F (sprintf) since provided by Test2::V0 too!;
# 2du:du psrand Fb in DAL wi SGRz,lern wut exported Test2::V0::F() is && does since it collIdez wi my a8 s4 (string-print-4m@d) shortNing nAm;
my $prnd=int(rand(4096)); # seed probably betr 4 rEprOducibl tSt setz l8r? lookz lIk YATH already seedz tStz wi just YYYYMMDD or similR 4 dupz;
my %csfx=('J'=>'09','j'=>'01','P'=>'0F','Q'=>'ABxy','X'=>'xyAB','x'=>'xABy','Z'=>'FF'); # crE8 char256 suffixez 4 what S Xpectz;
my %coam=('c'=>'u','d'=>'b','e'=>'m','f'=>'i','k'=>'l','n'=>'N','p'=>'z','q'=>'z','w'=>'u'); # CharacterOffAliasMap;
ok  ($Oct::a8::d8VS=~  /^[O-Za-z._][0-9A-C][0-9A-V]/ ,  "t00: d8VS::         >=           O; "); # 0th (1st) tSt d8VS Year 2024 @lEst; 2du:colr my out hEr2?;
for (0..62){my $c256 =    $sb256[ 1+ $_ ];my $bs4S= $c256;$bs4S=$coam{$c256} if(exists($coam{$c256}));$bs4S.=$csfx{$c256} if(exists($csfx{$c256}));
  my   $bc2S =S(     ":$bs4S");my $S2bc=c($bc2S);$S2bc=~ s/^:?//; # nEd 2 strip prEpNded colon from c (or include it in both!);
  ok(  $bs4S eq   $S2bc        , "t0" . $sb256[ 1+$_] . sprintf(": b6:%-2.2s$z:$bc2S%8.8s$z eq cb:%8.8s$z;",$c256,$bs4S,$S2bc));}
for my $lyrl(qw(F D A L)){for (0..63){my $c256 =    $sb256[    $_ ]; # loop thru all 256 FDAL:8pal8z 2 ck every 256 pal8 colr;
    my $bc2S =S("$lyrl:$c256");my $S2bc=c($bc2S);$S2bc=~ s/B?$//; # B4 nEded 2 strip prEpNded F: from c && just still tail B autO-Bold now;
    ok("$lyrl:$c256" eq $S2bc ,"t$lyrl".$sb256[   $_] . sprintf(": b6:%-2.2s$z:$bc2S%8.8s$z eq cb:%8.8s$z;",$c256, "$lyrl:$c256",$S2bc));}}
for (0..63){$prnd=int(rand(4096));    my $b6Fc =    $sb256[int($prnd/64)];my $b6bc =    $sb256[$prnd % 64];my $lyrz=  'Fb:';
    my $bc2S =S("$lyrz$b6Fc$b6bc");my $S2bc=c($bc2S);$S2bc=~ s/B?$//;
    ok(     "$b6Fc$b6bc" eq $S2bc,"t0" .$sb256[   $_] . sprintf(": b6:%-2.2s$z:$bc2S%8.8s$z eq cb:%8.8s$z;",$_,     "$b6Fc$b6bc",$S2bc));}
