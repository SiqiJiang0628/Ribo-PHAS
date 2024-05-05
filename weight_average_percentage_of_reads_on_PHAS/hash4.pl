#!/usr/bin/perl -w
use strict;
my ($aa,$bb,$cc)=@ARGV;
die unless @ARGV==3;
my %hash;
open F,"$aa" or die "$!";
while(<F>) {
chomp;
my @ss=split/\t/,$_;
      $hash{"$ss[0]"}=$_;
}

open I,"$bb" or die "$!";
open O,"+>$cc" or die "$!";
while(<I>) {
chomp;
my @ss=split;
if(exists($hash{$ss[0]})){
                print O "$_\t$hash{$ss[0]}\n";
        }else{
    
     # print O "$ss[0]\tNA\n";

}
}

