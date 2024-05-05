#!/usr/bin/perl -w
use strict;
my ($aa,$bb)=@ARGV;
die unless @ARGV==2;
my %hash_name;
my %hash_num;
open F,"$aa" or die "$!";
open O,"+>$bb" or die "$!";

while(<F>) {
chomp;
my @ss=split/\t/,$_;
      $hash_name{"$ss[-6]"}="$ss[-6]";
      $hash_num{"$ss[-6]"}+=$ss[-1];
}

foreach my $aa (keys %hash_name ){
     
     print O "$aa\t$hash_num{$aa}\n";
}

