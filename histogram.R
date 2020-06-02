pdf("histogram.pdf")

histogram <- read.csv("Histogram.csv", header=TRUE)
library(ggplot2)

ggplot(data=histogram, aes(age.group,percentage, fill=Category))+geom_bar(stat="identity",colour="grey")+
geom_text(aes(label=paste(format(percentage,nsmall=2),"%")),position=position_stack(vjust=0.5),size=3)+
scale_fill_brewer(palette = "Pastel2")
dev.off()