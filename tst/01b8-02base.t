#!/usr/bin/perl
# 37KK2jPD:01b8-02base.t originally crE8d by PipS <PipStuart@GMail.Com> to valid8 Math::BaseCnv functionality (before becoming the model for Oct::b8 tests).
#   This script initially mimicked Ken Williams' <Ken@Forums.Swathmore.Edu> test cases for his similar Math::BaseCalc module, but has diverged significantly.
#   Perl's hex() built-in was the opposite behavior of mine (but now mine is called heX() a-f && HEX() A-F to distinguish by UpperCasingX, as mine HEXify!).
use utf8;use v5.22;use Test;use Oct::b8;
# HARNESS-DURATION-SHORT
my $rslt;my $tnum=1;my $lded=1;my $tvrb=0;my $tsts=32;
END { print "not " unless($lded); print "ok $tsts\n"; }
sub rprt {my $badd = !shift(); # prints a rprt of test progress
  print 'not ' if($badd);
  print "ok ", $tnum++, "\n";print @_ if(($ENV{'TEST_VERBOSE'} || $tvrb) && $badd);}
plan('tests' => $tsts); &rprt(1);
my    $calc =     2;
&rprt($calc ==    2 , "$calc\n");
$rslt = cnv('01101', 2, 10);
&rprt($rslt ==   13 , "$rslt\n");
$rslt = cnv( '1101', 2, 10);
&rprt($rslt ==   13 , "$rslt\n");
$rslt = heX(46);
&rprt($rslt eq  '2e', "$rslt\n");
$rslt = HEX(46);
&rprt($rslt eq  '2E', "$rslt\n");
$rslt = heX(-17);
&rprt($rslt eq '-11', "$rslt\n");
$rslt = dec('E');
&rprt($rslt eq  '14', "$rslt\n");
$rslt = dec('F');
&rprt($rslt eq  '15', "$rslt\n");
$rslt = dec(-11);
&rprt($rslt eq '-17', "$rslt\n");
  #dig([               qw(i  a m  v e r y  p u n k) ] ); 
  my   $digz;@{$digz}= qw(i  a m  v e r y  p u n k);
  dig( $digz ); # running `perl` on this .t file worked fine but `yath` was asserting on custom dig setz or something?;
   $rslt = cnv(13933, 10, 11); 
  #$rslt = cnv(13933, scalar( dig() )); # MpT dig() retnz char array && scalar around it would give char-count, but is probably returning 93k or something?;
  &rprt($rslt eq 'krap', "$rslt\n");
        $rslt = cnv(13542, 10, 11);
  &rprt($rslt eq 'kaka', "$rslt\n");
#      #dig( [               qw( n a c h o z   y u m ) ] );
       $digz=undef;@{$digz}= qw( n a c h o z   y u m );
        dig( $digz );
        $rslt = cnv(lc('MunchYummyNachoChz'), 9, 10) / (10**17);
        $rslt = substr($rslt, 0, 10);
        &rprt($rslt eq '1.46443919', "$rslt\n");
#       # Test large numbers && dec/heX functions
#       #warn "res: $r1, $rslt";
dig('93k');
$calc =     heX(2**5 + 5);
$rslt = dec(heX(2**5 + 5));
&rprt($rslt eq (2**5 + 5), "$rslt\n");
  my $first  = cnv('1110111',           2, 10);
  my $second = cnv('1010110',           2, 10);
  my $third  = cnv(($first * $second),      2);
  #&rprt($third eq '10011111111010', "$third\n");
  # Test b10/b64 functions
  $rslt = b64(1234567890); # 10 base10 digits is only 6 bass64 digits
  &rprt($rslt eq '19bWBI', "$rslt\n");
  $rslt = b10('GitHub.Com') / (10**17); # 300_858_396_682_800_304
  $rslt = substr($rslt, 0, 6);
  &rprt($rslt eq '3.0085', "$rslt\n");
  $rslt = b10(b64(   127));
  &rprt($rslt eq    '127', "$rslt\n");
  $rslt = b10(b64(  4096));
  &rprt($rslt eq   '4096', "$rslt\n");
  $rslt = b10(b64( 65535));
  &rprt($rslt eq  '65535', "$rslt\n");
  $rslt = Fact(3);
  &rprt($rslt eq      '6', "$rslt\n");
  $rslt = Fact(4);
  &rprt($rslt eq     '24', "$rslt\n");
  $rslt = Fact(7);
  &rprt($rslt eq   '5040', "$rslt\n");
  $rslt = Fact(8);
  &rprt($rslt eq  '40320', "$rslt\n");
  $rslt = Chus(7, 3);
  &rprt($rslt eq     '35', "$rslt\n");
  $rslt = Chus(15, 7);
  &rprt($rslt eq   '6435', "$rslt\n");
  $rslt = Chus(16, 8);
  &rprt($rslt eq  '12870', "$rslt\n");
  $rslt = Chus(127, 3);
  &rprt($rslt eq '333375', "$rslt\n");
  $rslt = Sum8(7);
  &rprt($rslt eq     '28', "$rslt\n");
  $rslt = Sum8(8);
  &rprt($rslt eq     '36', "$rslt\n");
  $rslt = Sum8(15);
  &rprt($rslt eq    '120', "$rslt\n");
  $rslt = Sum8(127);
  &rprt($rslt eq   '8128', "$rslt\n");
