#!/usr/bin/perl
use strict;

open FILE,"$ARGV[0]";

while(<FILE>){
	chomp;
	my @aa = split" ";
        if(!/name/){
        if($aa[3]eq"+"){
        my$relative_position=$aa[6]-$aa[4];
         print  "$_\t$relative_position\n";     
}elsif($aa[3]eq"-"){
        my$relative_position=$aa[4]-$aa[6];
        print  "$_\t$relative_position\n";
}

}
}
close FILE;
