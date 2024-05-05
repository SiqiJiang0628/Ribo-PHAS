#!/usr/bin/perl
use strict;

my %hash;
open FILE,"$ARGV[0]";
while (<FILE>){
      chomp;
      my @aa=split; 
         
         $hash{$aa[4]}+=$aa[5];
      
}
close FILE;

foreach my $aa (keys %hash){
        print "$aa\t$hash{$aa}\n"
}





