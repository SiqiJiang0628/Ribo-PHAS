#!/usr/bin/perl
use strict;

open FILE,"$ARGV[0]";

my $sum0;

while(<FILE>){
	chomp;
	my @aa = split;
        $sum0 +=$aa[1];
}

print "$sum0\n";
close FILE;
