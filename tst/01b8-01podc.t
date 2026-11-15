#!/usr/bin/env perl
use utf8;use v5.22;use Test::More;
use FindBin qw($RealBin);use lib "$RealBin/../lib";use Oct::b8;
# HARNESS-DURATION-SHORT
eval              'use Test::Pod::Coverage;1';
plan      skip_all => 'Test::Pod::Coverage required for testing POD Coverage;' if $@;
plan         tests =>  1;
  pod_coverage_ok('Oct::b8', {'also_private' => [qr/^(cnv(10|__)+|bs2init)$/]},  "POD Covered;");
