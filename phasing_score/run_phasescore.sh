bamToBed -i 24nt.NO196_i1d3i4_merged.rm_rDNA.sort.bam >24nt.NO196_i1d3i4_merged.rm_rDNA.sort.bam.bed

python calculate_pscore.py 24nt.NO196_WTi1d3i4_merged.rm_rDNA.sort.bam.bed NO196_WTi1d3i4_merged.pscore

python get_TAS_and_pscore.py all_24PHAS_list_update4.merged_position.bed NO196_WTi1d3i4_merged.pscore all_PHAS

perl if_and_print.3.pl NO196_WTi1d3i4_merged.all_PHAS >NO196_WTi1d3i4_merged.all_PHAS.correct_for_plot

perl hash_v2.pl NO196_WTi1d3i4_merged.all_PHAS.correct_for_plot all_24PHAS_list_update4.merged_position.1bp  all_24PHAS_list_update4_merged_position.bed.1bp.NO196_WTi1d3i4_merged





