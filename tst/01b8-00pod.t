#!/usr/bin/env perl
use utf8;use v5.22;use Test::More;use Oct::b8;
# HARNESS-DURATION-SHORT
eval              'use Test::Pod  1.00 tests =>  1;1';my @pdrs=qw(. blib);
plan      skip_all => 'Test::Pod  1.00 required for testing POD;' if $@;
my $bpfp='../lib/Oct/b8.pm'; # loc8 a valid PM file to test POD 4:
#all_pod_files_ok(all_pod_files(@pdrs));
      pod_file_ok(   $bpfp,"Valid POD file;");
