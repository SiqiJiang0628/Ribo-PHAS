#!/usr/bin/perl
use strict;

my %hash;
open FILE,"$ARGV[0]";
while(<FILE>){
chomp;
my @aa = split;
my $len=length($aa[9]);
if ($aa[1] == 0){
	
        my $position_start = ($aa[3]);
        my $position_stop = ($aa[3]+$len-1);
        for (my $i=1; $i <= $len; $i++){
               my $position = $position_start+$i-1;
          print "$aa[0]\t$i\t$aa[2]\t$position\t$aa[2].$position.+\t1\n";

        }
}
else{
 
        my $position_start = ($aa[3]+$len-1);
        my $position_stop = ($aa[3]);
        for (my $i=1; $i <= $len; $i++){
               my $position = $position_start-($i-1);
          print "$aa[0]\t$i\t$aa[2]\t$position\t$aa[2].$position.-\t1\n";
        }
        
}

}




