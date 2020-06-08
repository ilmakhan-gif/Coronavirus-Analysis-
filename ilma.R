new <-read.csv("complete_1.csv", header=TRUE)
complete_france <- read.csv("France.csv", header=TRUE)
complete_china <- read.csv("China.csv", header=TRUE)
complete_usa <- read.csv("USA.csv",header=TRUE)
complete_uk <- read.csv("UK.csv",header=TRUE)
complete_turkey <- read.csv("Turkey.csv",header=TRUE)
complete_italy <- read.csv("Italy.csv",header=TRUE)
complete_russia <- read.csv("Russia.csv",header=TRUE)
complete_spain <- read.csv("Spain.csv",header=TRUE)
complete_iran <- read.csv("Iran.csv",header=TRUE)
complete_germany <- read.csv("Germany.csv",header=TRUE)
complete_brazil <- read.csv("Brazil.csv",header=TRUE)
complete_india <- read.csv("India.csv",header=TRUE)
complete_peru <- read.csv("Peru.csv",header=TRUE)

pdf("country_final.pdf")


france <- subset(complete_france,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
china <- subset(complete_china,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
usa <- subset(complete_usa,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
uk <- subset(complete_uk,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
turkey<- subset(complete_turkey,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
italy<- subset(complete_italy,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
russia<- subset(complete_russia,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
spain<- subset(complete_spain,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
iran<- subset(complete_iran,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
germany<- subset(complete_germany,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
brazil<- subset(complete_brazil,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
india<- subset(complete_india,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))
peru<- subset(complete_peru,select = c("Country.Region","Days","Confirmed","Deaths","Recovered"))

library(ggplot2)
library(reshape2)

m_france <- melt(france, id.vars=c("Country.Region","Days"))
m_china <- melt(china, id.vars=c("Country.Region","Days"))
m_usa <- melt(usa, id.vars=c("Country.Region","Days"))
m_uk <- melt(uk, id.vars=c("Country.Region","Days"))
m_turkey <- melt(turkey, id.vars=c("Country.Region","Days"))
m_italy <- melt(italy, id.vars=c("Country.Region","Days"))
m_russia <- melt(russia, id.vars=c("Country.Region","Days"))
m_spain <- melt(spain, id.vars=c("Country.Region","Days"))
m_iran <- melt(iran, id.vars=c("Country.Region","Days"))
m_germany <- melt(germany, id.vars=c("Country.Region","Days"))
m_brazil <- melt(brazil, id.vars=c("Country.Region","Days"))
m_india <- melt(india, id.vars=c("Country.Region","Days"))
m_peru <- melt(peru, id.vars=c("Country.Region","Days"))


cbp3<-c("#808000","#e6194B","#469990")

ggplot(m_france, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,200000, by=20000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=20, y=150000, label="France",size=5)+
  labs(title="Daily change in France", x="Days", y="Value" , size=5)+
  geom_line(size=1)


ggplot(m_china, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,130, by=10))+
  scale_y_continuous(breaks= seq(0,80000, by=10000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=80, y=40000, label="China",size=5)+
  labs(title="Daily change in China", x="Days", y="Value" , size=5)+
  geom_line(size=1)


ggplot(m_usa, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,1800000, by=300000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=20, y=1500000, label="USA",size=5)+
  labs(title="Daily change in USA", x="Days", y="Value" , size=5)+
  geom_line(size=1)

ggplot(m_uk, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,300000, by=30000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=250000, label="United Kingdom",size=5)+
  labs(title="Daily change in UK", x="Days", y="Value" , size=5)+
  geom_line(size=1)


ggplot(m_turkey, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,200000, by=25000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=180000, label="Turkey",size=5)+
  labs(title="Daily change in Turkey", x="Days", y="Value" , size=5)+
  geom_line(size=1)

ggplot(m_italy, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,250000, by=25000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=180000, label="Italy",size=5)+
  labs(title="Daily change in Italy", x="Days", y="Value" , size=5)+
  geom_line(size=1)

ggplot(m_russia, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,420000, by=40000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=380000, label="Russia",size=5)+
  labs(title="Daily change in Russia", x="Days", y="Value" , size=5)+
  geom_line(size=1)

ggplot(m_spain, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,380000, by=40000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=350000, label="Spain",size=5)+
  labs(title="Daily change in Spain", x="Days", y="Value" , size=5)+
  geom_line(size=1)

 ggplot(m_iran, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,160000, by=20000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=140000, label="Iran",size=5)+
  labs(title="Daily change in Iran", x="Days", y="Value" , size=5)+
  geom_line(size=1)

 ggplot(m_germany, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,200000, by=20000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=150000, label="Germany",size=5)+
  labs(title="Daily change in Germany", x="Days", y="Value" , size=5)+
  geom_line(size=1)

 ggplot(m_brazil, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,5500000, by=50000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=450000, label="Brazil",size=5)+
  labs(title="Daily change in Brazil", x="Days", y="Value" , size=5)+
  geom_line(size=1)

  ggplot(m_india, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,200000, by=20000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=150000, label="India",size=5)+
  labs(title="Daily change in India", x="Days", y="Value" , size=5)+
  geom_line(size=1)

 ggplot(m_peru, aes(x=Days, y=value,group=variable,colour=variable))+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,180000, by=20000))+
  scale_colour_manual(values=cbp3)+
  annotate(geom="text", x=30, y=150000, label="Peru",size=5)+
  labs(title="Daily change in Peru", x="Days", y="Value" , size=5)+
  geom_line(size=1)

dev.off()