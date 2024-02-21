#!/usr/bin/perl
use strict;
open FILE,"$ARGV[0]";

while(<FILE>){
	chomp;
	my @line = split;
	if(/Gene/){
		print "$_\n";
	}else{
		print "$line[0]\t";
	
		for(my $n=1;$n<@line;$n++){
			$line[$n] = log($line[$n]+0.01)/log(2);
			print "$line[$n]\t";
		}
		print "\n";
	}
	
#	print "\n";
}
close FILE;	
