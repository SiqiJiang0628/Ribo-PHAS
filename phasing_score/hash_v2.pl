#!/usr/bin/perl -w
use strict;
my ($aa,$bb,$cc)=@ARGV;
die unless @ARGV==3;
my %hash;
open F,"$aa" or die "$!";
while(<F>) {
chomp;
my @ss=split/\t/,$_;
$hash{"$ss[5]"}=$ss[6];
}

close F;
open I,"$bb" or die "$!";
open O,"+>$cc" or die "$!";
while(<I>) {
chomp;
my @ss=split;
my$key="$ss[5].$ss[6]";
if(exists($hash{$key})){
                print O "$_\t$hash{$key}\n";
        }else{
    
      print O "$_\tNA\n";

}
}



