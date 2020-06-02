complete<-read.csv("Complete_1.csv",header=TRUE)
install.packages(dplyr)
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(viridisLite)
library(viridis)

pdf("with_US2.pdf")
cbp1<-c("#fabebe","#9A6324","#808000","#469990","#000075","#000000","#e6194B","#9370DB","#f58231","#ffe119","#3cb44b","#911eb4","#800000")

ggplot(data= complete,aes(x=Days,y= Confirmed, color=Country.Region))+
  scale_colour_manual(values=cbp1)+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,1800000, by = 300000))+
  geom_line(aes(group=Country.Region),size=1)+
  ggtitle("Cases due to COVID-19")+labs(x="Days",y="Cases")

ggplot(data= complete,aes(x=Days,y=Deaths, color=Country.Region))+
  scale_colour_manual(values=cbp1)+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,120000, by = 10000))+
  geom_line(aes(group=Country.Region),size=1)+
  ggtitle("Deaths due to COVID-19")+labs(x="Days",y="Deaths")

ggplot(data= complete,aes(x=Days,y=Recovered , color=Country.Region))+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,600000, by = 60000))+
  scale_colour_manual(values=cbp1)+
  geom_line(aes(group=Country.Region),size=1)+
  ggtitle("Recovered from COVID-19")+labs(x="Days",y="Recovered")


ggplot(data= complete,aes(x=Days,y= Confirmed, color=Country.Region))+
  geom_line(aes(group=Country.Region),size=0.1)+
  ggtitle("Cases due to COVID-19")+labs(x="Days",y="Cases")+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,1800000, by = 300000))+
  scale_colour_manual(values=cbp1)+
  
  geom_segment(aes(x=0,y=0,xend=21,yend=1048576,),colour= "brown" ,linetype="dashed", size=1,data=complete)+
  annotate(geom="text", x=25, y=1100000, label="Cases double everyday",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=54,yend=845576),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=60, y=900000, label="Cases double every 3 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=85,yend=524288),colour="brown", linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=95, y=600000, label="Cases double every 5 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=112,yend=262144),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=112, y=300000, label="Cases double every 7 days",size=5)




ggplot(data= complete,aes(x=Days,y= Deaths, color=Country.Region))+
  geom_line(aes(group=Country.Region),size=0.1)+
  ggtitle("Deaths due to COVID-19")+labs(x="Days",y="Deaths")+
  scale_x_continuous(breaks= seq(0,130, by = 10))+
  scale_y_continuous(breaks= seq(0,120000, by = 20000))+
  scale_colour_manual(values=cbp1)+
  
  geom_segment(aes(x=0,y=0,xend=16,yend=111072,),colour= "brown" ,linetype="dashed", size=1,data=complete)+
  annotate(geom="text", x=35, y=115000, label="Deaths double everyday",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=55,yend=99072),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=65, y=100000, label="Deaths double every 3 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=70,yend=65536),colour="brown", linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=85, y=70000, label="Deaths double every 5 days",size=5)+
  
  geom_segment(aes(x=0,y=0,xend=84,yend=16384),colour="brown",linetype="dashed",size=1,data=complete)+
  annotate(geom="text", x=80, y=20000, label="Deaths double every 7 days",size=5)
dev.off()