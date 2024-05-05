#!/usr/bin/perl
use strict;

open FILE,"$ARGV[0]";

my $sum0;

while(<FILE>){
	chomp;
	my @aa = split " ";
        $sum0 +=$aa[-1];
}
close FILE;

open FILE,"$ARGV[0]";
while(<FILE>){
        chomp;
        my @aa = split " ";
        my @bb=split/\./,$_;
        my $percent=$aa[-1]/$sum0*100;
        print "$aa[-3]\t$aa[-1]\t$sum0\t$percent\n";
}
close FILE;

