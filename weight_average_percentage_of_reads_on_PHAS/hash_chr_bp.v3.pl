#!/usr/bin/perl -w
use strict;
my ($aa,$bb,$cc)=@ARGV;  #aa=21nt_phaseRegion.rm_protein_coding.gtf.uniq.bed.1bp_add_cleavage_info $bb=forward_anther_0.5mm_merge_uniq_map.srt.bam.depth $cc=21nt_phaseRegion.rm_protein_coding.gtf.uniq.bed.1bp_add_cleavage_info_depth
die unless @ARGV==3;
my %hash;
open F,"$aa" or die "$!";
while(<F>) {
chomp;
my @ss=split/\t/,$_;
      $hash{"$ss[0]"}="$ss[1]\t$ss[2]\t$ss[3]";
}

open I,"$bb" or die "$!";
open O,"+>$cc" or die "$!";

print O "name\tstart\tend\tstrand_info\tcleavage_site_pos\tchr\tdepth_pos\tnum\tid\tdepth\tall_reads_number\trelative_depth\n";
while(<I>) {
chomp;
my @ss=split;
my $key_value = "$ss[8]";
if(!/name/){
if (exists($hash{$key_value})) {
        print O "$_\t$hash{$key_value}\n"; #name[0] start[1] end[2]  strand_info[3] cleavage_site_pos[4] [5]chr [6]depth_pos [7]num [8] name [9]depth [10]all_reads_number [11]relative_depth
}else{
        print O "$_\t0\tNA\t0\n";
}
}

}



