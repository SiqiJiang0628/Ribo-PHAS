

samtools view 27_29nt_c72_merged_15mm_sorted.q20.bam |perl strand_specific.not_correct_offset_of_27_29nt.pl - >27_29nt_c72_merged_15mm_sorted.q20.reads_coverage
perl count_total_reads_coverage_for_perbase_strand_specific.pl 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage >27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum
perl convert_relative_depth_ribo_c72_15mm 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum >27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative
perl hash_chr_bp.v3.pl 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative 24PHAS_list_remove_24PHAS_overlap_with_gene.with_header_manual_correct.C72.with_cleavage.merged_position.1bp.strand_specific 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header
perl  turn_to_relative_position.pl 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header >27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position
perl -e 'while(<>){chomp;my@aa=split;if($aa[-1]>=-500 and $aa[-1]<=1000){print"$_\n";}}' 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position >27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000

#get total reads number from -500 to 1000
perl hashcount_total_number.pl 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.total

# total reads number of reads before cleavage in each 24-PHAS
perl  calculate_sum.pl 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.total >27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.total.all_PHAS_total

#step3 calculate weight of each 24-PHAS
perl -e 'while(<>){chomp;my@aa=split;my$total=1282720;my$weight=$aa[1]/$total;print"$_\t$weight\n"; }' 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.total >27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.total.weight

#$aa[-1] weight percenatge; $aa[-2] reads number/total; $aa[-3] weight; $aa[-4] total reads number of reads before cleavage
perl hash4.pl 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.total.weight 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.weight
perl hashcount_total_perbase.pl 27_29nt_c72_merged_15mm_sorted.q20.reads_coverage.sum.relative.with_header.relative_position.-500_1000.weight.percentage 27_29nt_c72_merged_15mm.totol_PHAS.weight.percentage.total


