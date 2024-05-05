
####27_29nt_c72_05mm_R1.sorted.q20.bam is the input file of ribo-seq mapped bam file

samtools view   27_29nt_c72_05mm_R1.sorted.q20.bam | perl cal_the_number_of_read_mapped_to_CDS_or_UTRs.20_40nt.pl Zea_mays.AGPv4.genomic_annotion.new_24PHAS.gff3 - > 27_29nt_c72_05mm_R1.read_number_count_of_CDS_intron_and_UTR

perl calculate_output_of_wt_sum.pl  27_29nt_c72_05mm_R1.read_number_count_of_CDS_intron_and_UTR >27_29nt_c72_05mm_R1.read_number_count_of_CDS_intron_and_UTR.

perl -e 'while(<>){chomp;my@aa=split;print"$_\t05mm_R1\n"}' 27_29nt_c72_05mm_R1.read_number_count_of_CDS_intron_and_UTR. >27_29nt_c72_05mm_R1.read_number_count_of_CDS_intron_and_UTR.xls




