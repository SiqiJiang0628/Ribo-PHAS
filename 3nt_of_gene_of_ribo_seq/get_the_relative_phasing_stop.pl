#!/usr/bin/perl
use strict;

die usage() if @ARGV == 0;
my $file = $ARGV[0];
my %hash_read_number;

open NEW,"$file" or die;
while(<NEW>){
	chomp;
	if(/position/){
	}
	else{
		my @array = split /\s+/;
		$hash_read_number{$array[0]} = $array[1];
	}
}
close NEW;

for(my $number=-40;$number<=0;$number++){
	my $aa = $number - 2;
	my $bb = $number - 1;
	my $cc = $number + 1;
	my $dd = $number + 2;
	my $average;
	if($number == -39){
		$average = ($hash_read_number{$bb}+$hash_read_number{$cc}+$hash_read_number{$dd})/3;
	}
	elsif($number == -40){
		$average = ($hash_read_number{$cc}+$hash_read_number{$dd})/2;
	}
	else{
		$average = ($hash_read_number{$aa}+$hash_read_number{$bb}+$hash_read_number{$cc}+$hash_read_number{$dd})/4;
	}
#	my $average = ($hash_read_number{$aa}+$hash_read_number{$bb}+$hash_read_number{$cc}+$hash_read_number{$dd})/4;
	my $phasing = $hash_read_number{$number}/$average;
	print "$number\t$phasing\n";
}


sub usage{
	my $die =<<DIE;
	usage: perl *.pl read_number_at_CDS_start/read_number_at_CDS_stop
DIE
}
