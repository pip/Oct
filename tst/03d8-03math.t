#!/usr/bin/perl
use utf8;use v5.22;use Test;use Octology::d8;
# HARNESS-DURATION-SHORT
plan tests =>  1;ok(1);
my   @plyz = (['GAVM7wxW'],['GAVM7xXa'],['GAVMCAF8']);#'GAVM805F']);
my   $wstd = Octology::d8::dur8->new();
my   $kstd = Octology::d8::dur8->new();
my   $ppd8 = Octology::d8->new($plyz[ 0][0]); # White&&blacKSideTotalDur8ionz
for(1..$#plyz){
  my $cpd8 = Octology::d8->new($plyz[$_][0]); # Prev&&CurPlyD8z
  say "cpd8:$cpd8 - $ppd8:ppd8";
  if($_ % 2){$kstd += $cpd8 - $ppd8;}
  else      {$wstd += $cpd8 - $ppd8;} $ppd8 = $cpd8;}
#ay   "wstd:$wstd kstd:$kstd";$wstd->_sift();$kstd->_sift();
say   "wstd:$wstd kstd:$kstd";
