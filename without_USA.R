complete<-read.csv("Without_USA.csv",header=TRUE)
install.packages(dplyr)
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(viridisLite)

pdf("without_US.pdf")

cbp2<-c("#ffe119","#9A6324","#808000","#469990","#000075","#000000","#e6194B","#9370DB","#f58231","#3cb44b","#911eb4","#800000")

ggplot(data= complete,aes(x=Days,y= Confirmed, color=Country.Region))+
  scale_colour_manual(values=cbp2)+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,500000, by = 50000))+
  geom_line(aes(group=Country.Region),size=1)+
  ggtitle("Cases due to COVID-19")+labs(x="Days",y="Cases")

ggplot(data= complete,aes(x=Days,y=Deaths, color=Country.Region))+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_colour_manual(values=cbp2)+
  scale_y_continuous(breaks= seq(0,50000, by = 5000))+
  geom_line(aes(group=Country.Region),size=1)+
  ggtitle("Deaths due to COVID-19")+labs(x="Days",y="Deaths")

ggplot(data= complete,aes(x=Days,y=Recovered , color=Country.Region))+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,200000, by = 40000))+
  scale_colour_manual(values=cbp2)+
  geom_line(aes(group=Country.Region),size=1)+
  ggtitle("Recovered from COVID-19")+labs(x="Days",y="Recovered")


ggplot(data= complete,aes(x=Days,y= Confirmed, color=Country.Region))+
  geom_line(aes(group=Country.Region),size=0.1)+
  ggtitle("Cases due to COVID-19")+labs(x="Days",y="Cases")+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,500000, by = 50000))+
  scale_colour_manual(values=cbp2)+
  
  geom_segment(aes(x=0,y=0,xend=20,yend=262144,),colour= "brown" ,linetype="dashed", size=1,data=complete)+
  annotate(geom="text", x=25, y=280000, label="Cases double everyday",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=54,yend=200144),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=70, y=210000, label="Cases double every 3 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=75,yend=131072),colour="brown", linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=80, y=150000, label="Cases double every 5 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=98,yend=65536),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=98, y=70000, label="Cases double every 7 days",size=5)




ggplot(data= complete,aes(x=Days,y= Deaths, color=Country.Region))+
  geom_line(aes(group=Country.Region),size=0.1)+
  ggtitle("Cases due to COVID-19")+labs(x="Days",y="Deaths")+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,50000, by = 5000))+
  scale_colour_manual(values=cbp2)+
  
  geom_segment(aes(x=0,y=0,xend=15,yend=32768,),colour= "brown" ,linetype="dashed", size=1,data=complete)+
  annotate(geom="text", x=25, y=35000, label="Deaths double everyday",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=55,yend=25768),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=70, y=28000, label="Deaths double every 3 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=60,yend=16384),colour="brown", linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=75, y=18000, label="Deaths double every 5 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=77,yend=8192),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=77, y=8500, label="Deaths double every 7 days",size=5)

dev.off()
