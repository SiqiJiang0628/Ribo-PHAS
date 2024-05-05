#!/usr/bin/perl

use strict;
die usage() if @ARGV == 0;
my ($gff,$uniq) = @ARGV;
my %hash_position_mRNA;
my %hash_position_CDS;
my %hash_position_five_UTR;
my %hash_position_three_UTR;
my %hash_position_non_phase_lnc_RNA;
my %hash_position_PHAS_21;
my %hash_position_PHAS_24;
#my %hash_position_PHAS_24_without_cleavage;
#my %hash_position_tRNA;
my %hash_position_microRNA;




open NEW,"$gff" or die;
	while(<NEW>){
		chomp;
		my @array = split /\s+/;
                if($array[2] =~ /24PHAS/){
                        for(my $number = $array[3];$number <= $array[4];$number++){
                        my $position = "$array[0]"."-"."$number";
                                $hash_position_PHAS_24{$position} = 1;
                        }
                 }
                if($array[2] =~ /21PHAS/){
                        for(my $number = $array[3];$number <= $array[4];$number++){
                        my $position = "$array[0]"."-"."$number";
                                $hash_position_PHAS_21{$position} = 1;
                        }
                }
                if($array[2] =~ /mRNA/){
		        for(my $number = $array[3];$number <= $array[4];$number++){
			my $position = "$array[0]"."-"."$number";
				$hash_position_mRNA{$position} = 1;
                        }
		}
                if($array[2] =~ /CDS/){
                        for(my $number = $array[3];$number <= $array[4];$number++){
                        my $position = "$array[0]"."-"."$number";
                                $hash_position_CDS{$position} = 1;
                        }
                }       
                if($array[2] =~ /five_prime_UTR/){
                        for(my $number = $array[3];$number <= $array[4];$number++){
                        my $position = "$array[0]"."-"."$number";
                                $hash_position_five_UTR{$position} = 1;
                        }
                }       
                if($array[2] =~ /three_prime_UTR/){
                        for(my $number = $array[3];$number <= $array[4];$number++){
                        my $position = "$array[0]"."-"."$number";
                                $hash_position_three_UTR{$position} = 1;
                        }
                }  
                if($array[2] =~ /lincRNA/){
                        for(my $number = $array[3];$number <= $array[4];$number++){
                        my $position = "$array[0]"."-"."$number";
                                $hash_position_non_phase_lnc_RNA{$position} = 1;
                        }
                }
                
                if($array[2] =~ /microRNA/){
                        for(my $number = $array[3];$number <= $array[4];$number++){
                        my $position = "$array[0]"."-"."$number";
                                $hash_position_microRNA{$position} = 1;
                        }
                }

                

	}
	close NEW;


my @uniq_reads;
open NEW,"$uniq" or die;
while(<NEW>){
        chomp;
        my @array = split /\s+/;
        my $length = length($array[9]);
#       if($length == $read_length){
                if($array[1] == 0){
                        my $target;
                        my $coordinate;
                         
                        if($length == 20 or $length == 21 or $length == 22){
                                $coordinate = $array[3] + 11;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 23 or $length == 24 or $length == 26 or $length == 25){
                                $coordinate = $array[3] + 12;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }

                        elsif($length == 27 or $length == 28 or $length == 29){
                                $coordinate = $array[3] + 14;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 30 or $length == 31 or $length == 32){
                                $coordinate = $array[3] + 15;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 33 or $length == 34){
                                $coordinate = $array[3] + 16;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                         elsif($length == 35 or $length == 36 or $length == 37){
                                $coordinate = $array[3] + 17;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 38 or $length == 39 or $length == 40){
                                $coordinate = $array[3] + 18;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }

                }
                elsif($array[1] == 16){
                        my $target;
                        my $coordinate;
                        if($length == 20 or $length == 21 or $length == 22){
                                $coordinate = $array[3] + $length - 10;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 23 or $length == 24 or $length == 25 or $length == 26){
                                $coordinate = $array[3] + $length - 13;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }

                                                 
                        elsif($length == 27 or $length == 28 or $length == 29){
                                $coordinate = $array[3] + $length - 15;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 30 or $length == 31 or $length == 32){
                                $coordinate = $array[3] + $length - 16;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
			elsif($length == 33 or $length == 34){
                                $coordinate = $array[3] + $length - 17;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 35 or $length == 36 or $length == 37){
                                $coordinate = $array[3] + $length - 18;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                        elsif($length == 38 or $length == 39 or $length == 40){
                                $coordinate = $array[3] + $length - 19;
                                $target = "$array[2]"."-"."$coordinate";
                                push @uniq_reads,$target;
                        }
                }
}
close NEW; 
		
my $number_of_reads_CDS;
my $number_of_reads_intron;
my $number_of_reads_5_UTR;
my $number_of_reads_3_UTR;
my $number_of_reads_PHAS_21;
my $number_of_reads_PHAS_24;
my $number_of_reads_non_phase_lnc_RNA;
my $number_of_reads_microRNA;
my $number_of_reads_other;
foreach my $key(@uniq_reads){
        if(exists $hash_position_PHAS_21{$key}){
                $number_of_reads_PHAS_21++;
        }
        elsif(exists $hash_position_PHAS_24{$key}){
                $number_of_reads_PHAS_24++;
        }
	elsif(exists $hash_position_CDS{$key}){
		$number_of_reads_CDS++;
	}
	elsif(exists $hash_position_five_UTR{$key}){
		$number_of_reads_5_UTR++;
	}
	elsif(exists $hash_position_three_UTR{$key}){
		$number_of_reads_3_UTR++;
	}
	elsif(exists $hash_position_mRNA{$key}){
		$number_of_reads_intron++;
	}
        
        elsif(exists $hash_position_microRNA{$key}){
                $number_of_reads_microRNA++;
        }
        elsif(exists $hash_position_non_phase_lnc_RNA{$key}){
                $number_of_reads_non_phase_lnc_RNA++;
        }
        else{$number_of_reads_other++;}
}

print "the read number located in CDS is \t$number_of_reads_CDS\nthe read number located in Intron is \t$number_of_reads_intron\nthe read number located in 5_UTR is \t$number_of_reads_5_UTR\nthe read number located in 3_UTR is \t$number_of_reads_3_UTR\nthe read number located in PHAS_21 is \t$number_of_reads_PHAS_21\nthe read number located in PHAS_24 is \t$number_of_reads_PHAS_24\nthe read number located in microRNA is \t$number_of_reads_microRNA\nthe read number located in non_phase_lnc_RNA is \t$number_of_reads_non_phase_lnc_RNA\nthe read number located in other is \t$number_of_reads_other\n";

sub usage{
	my $die =<<DIE;
	usage : samtools view uniq_mapped_reads.bam | perl *.pl CDS_bed_file Intron_bed_file 5_primer_UTR_bed_file 3_primer_UTR_bed_file - >./read_number_count_of_CDS_intron_and_UTR
DIE
}
