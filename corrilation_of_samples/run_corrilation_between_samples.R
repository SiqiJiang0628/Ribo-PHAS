#setwd("/mnt/siqi/progress/ribo-PHAS/results_update_v5/supplentary/01_coeeilation_RNA_ribo/RNA")
aa<-read.table("combined_05mm_pollen_RNA_FPKM.with_header.expression_more1.log2.xls",head = T)
pw_plot <- function(x,y,xlab = "x",ylab = "y", ...){
#log2x = log2(x+1)
#log2y = log2(y+1)
smoothScatter(x,y,cex=2.0,xlim=c(0,16),ylim=c(0,16),xlab = xlab, ylab = ylab,cex.lab=1.5,cex.main=1.5,cex.axis=1.5)
text(3,10,paste("R = ", round(cor(x,y),2),sep = ""))
}
pdf("corri_RNA_0.5R1_0.5R2.pdf",height = 5,width =4.5)
pw_plot(aa[,2],aa[,3],xlab="Replicate1",ylab = "Replicate2")
title(main = "0.5 mm anthers")
dev.off()

pdf("corri_RNA_1.0R1_1.0R2.pdf",height = 5,width =4.5)
pw_plot(aa[,4],aa[,5],xlab="Replicate1",ylab = "Replicate2")
title(main = "1.0 mm anthers")
dev.off()

pdf("corri_RNA_1.3R1_1.3R2.pdf",height = 5,width =4.5)
pw_plot(aa[,6],aa[,7],xlab="Replicate1",ylab = "Replicate2")
title(main = "1.3 mm anthers")
dev.off()

pdf("corri_RNA_1.5R2_1.5R3.pdf",height = 5,width =4.5)
pw_plot(aa[,8],aa[,9],xlab="Replicate1",ylab = "Replicate2")
title(main = "1.5 mm anthers")
dev.off()

pdf("corri_RNA_2.0R4_2.0R5.pdf",height = 5,width =4.5)
pw_plot(aa[,10],aa[,11],xlab="Replicate1",ylab = "Replicate2")
title(main = "2.0 mm anthers")
dev.off()

pdf("corri_RNA_2.5R3_2.5R4.pdf",height = 5,width =4.5)
pw_plot(aa[,12],aa[,13],xlab="Replicate1",ylab = "Replicate2")
title(main = "2.5 mm anthers")
dev.off()

pdf("corri_RNA_3.0R4_3.0R5.pdf",height = 5,width =4.5)
pw_plot(aa[,14],aa[,15],xlab="Replicate1",ylab = "Replicate2")
title(main = "3.0 mm anthers")
dev.off()

pdf("corri_RNA_4.0R2_R3.pdf",height = 5,width =4.5)
pw_plot(aa[,16],aa[,17],xlab="Replicate1",ylab = "Replicate2")
title(main = "4.0 mm anthers")
dev.off()

pdf("corri_RNA_5.0R2_5.0R3.pdf",height = 5,width =4.5)
pw_plot(aa[,18],aa[,19],xlab="Replicate1",ylab = "Replicate2")
title(main = "5.0 mm anthers")
dev.off()

pdf("corri_RNA_pollenR1_pollenR3.pdf",height = 5,width =4.5)
pw_plot(aa[,20],aa[,21],xlab="Replicate1",ylab = "Replicate2")
title(main = "pollen")
dev.off()






