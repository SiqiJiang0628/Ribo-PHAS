#!/usr/bin/perl
use strict;

open FILE,"$ARGV[0]";

while(<FILE>){
	chomp;
	my @aa = split;
        print "$_\t$aa[2].$aa[3]\t";
        if($aa[4]eq"NA"){
        print "NA\n";
}
        elsif($aa[4]<=0){
        print "0\n";
           
}else{
        print"$aa[4]\n";
}
}
close FILE;
