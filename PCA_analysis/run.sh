perl convert_log2.pl  combined_05mm_pollen_RNA_FPKM.with_header.xls > combined_05mm_pollen_RNA_FPKM.with_header.log2.xls
python convert_format_for_hclust.py combined_05mm_pollen_RNA_FPKM.with_header.log2.xls combined_05mm_pollen_RNA_FPKM.with_header.log2.matrix
R --vanilla <run_plot_PCA_RNA.R



