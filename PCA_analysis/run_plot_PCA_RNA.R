
library('ggsci')
library('ggplot2')

aa<-read.table("combined_05mm_pollen_RNA_FPKM.with_header.log2.matrix")
rownames(aa)=aa[,1]
aa[,1]<-NULL
set.seed(100)
pr = prcomp(aa)
summary(pr)
temp<-predict(pr)
temp<-as.data.frame(temp)
temp[,3]<-rownames(aa)
library(ggplot2)
pdf("combined_05mm_pollen_RNA_FPKM.with_header.log2.matrix.pdf",height = 4,width = 8)

ggplot(temp,aes(PC1,PC2))+geom_point(aes(color=PC3),size = 2)+theme(panel.grid.minor = element_blank(),
axis.title=element_text(size=15),
axis.text=element_text(size=11),
panel.background = element_rect(
fill = "transparent", color = "black"),
axis.text.x = element_text(size=12),
plot.margin=unit(c(0.2,0.2,0.2,0.2),"cm"),
legend.title=element_blank(),
legend.text=element_text(size=11))+xlab("PC1(53.38%)")+ylab("PC2(12.76%)")+
 scale_color_d3("category20")

dev.off()




