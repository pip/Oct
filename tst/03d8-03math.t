#!/usr/bin/env perl
use utf8;use v5.22;use Test;
use FindBin qw($RealBin);use lib "$RealBin/../lib";use Oct::d8;
# HARNESS-DURATION-SHORT
plan tests => 14;
my $z8=Oct::d8::dur8->new( '0');my @rf; # mk zer0 MpT dur8ion 2 add without causing deep recursion hopefully?;
my $d8=Oct::d8->new('QBFLDpod');ok($d8,$d8+$z8);
my $r8=Oct::d8::dur8->new('1x');ok($r8,$r8+$z8);
my $o8=Oct::d8::dur8->new( '1'); # mk one dur8n;
   $r8+=$o8 ;@rf=$r8->sp()     ;ok($rf[0], 2); # $r8++ or +='1' does deep recursion! =( ;
                                ok($rf[1], 0);
   $d8+=$o8 ;@rf=$d8->sp()     ;ok($rf[0],50);
                                ok($rf[1],40);
   $d8=Oct::d8->new('QBFLE0xW');ok($d8,$d8-$z8);
   $r8=Oct::d8::dur8->new('xV');ok($r8,$r8-$z8);
my $t8=Oct::d8::dur8->new('10'); # mk ten dur8n;
   $r8+=$t8 ;@rf=$r8->msp()    ;ok($rf[0], 1);
                                ok($rf[1], 0);
                                ok($rf[2],31);
   $d8+=$t8 ;@rf=$d8->msp()    ;ok($rf[0], 1);
                                ok($rf[1], 0);
                                ok($rf[2],32); # 2du:stil tSt mor:
# Borrow             1 minute − 1 second = 59 seconds
# Duration totals    1 hour = 216,000 phasses
# Differences        A timestamp minus itself represents zero duration
# Inverses           For supported values, (timestamp + duration) − duration recovers the original
# Mutation           Ordinary + and − leave their input objects unchanged, if that is the intended contract
# Use valid dates && a fixed UTC offset 1st. Test resulting fields or total_phasses() against explicit numbers; avoid relying solely on overloaded equality.
