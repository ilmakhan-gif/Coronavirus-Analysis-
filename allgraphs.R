pdf("Allgraphs4.pdf")

ggplot()+
  geom_line(data=complete_india, aes(x=Days, y=Confirmed), color="red", size=1)+
  annotate(geom="text", x=20, y=100000, label="India",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10)) +
  scale_y_continuous(breaks= seq(0,200000, by=20000))+
  labs(title="Cases",x="Days", y="Cases " , size=5)
 
ggplot()+
  geom_line(data=complete_india,aes(x=Days,y=Doubling.Rate.Cases.), color="red",size=1)+
  annotate(geom="text", x=10, y=10, label="India",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  labs(title="Doubling Rate",x="Days", y="Doubling Rate " , size=5)

ggplot()+
  geom_line(data=complete_turkey, aes(x=Days, y=Confirmed), color="pink", size=1)+
  annotate(geom="text", x=20, y=120000, label="Turkey",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10)) +
  scale_y_continuous(breaks= seq(0,180000, by=20000))+
  labs(title="Cases",x="Days", y="Cases " , size=5)
 ggplot()+
  geom_line(data=complete_turkey,aes(x=Days,y=Doubling.Rate.Cases.), color="pink",size=1)+
  annotate(geom="text", x=20, y=25, label="Turkey",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  scale_y_continuous(breaks= seq(0,50, by=10))+
  labs(title="Doubling Rate",x="Days", y="Doubling Rate " , size=5)

ggplot()+
  geom_line(data=complete_brazil, aes(x=Days, y=Confirmed), color="green", size=1)+
  annotate(geom="text", x=20, y=250000, label="Brazil",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10)) +
  scale_y_continuous(breaks= seq(0,500000, by=50000))+
  labs(title="Cases",x="Days", y="Cases " , size=5)

 ggplot()+
  geom_line(data=complete_brazil,aes(x=Days,y=Doubling.Rate.Cases.), color="green",size=1)+
  annotate(geom="text", x=20, y=15, label="Brazil",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  labs(title="Doubling Rate ",x="Days", y="Doubling Rate " , size=5)

ggplot()+
  geom_line(data=complete_russia, aes(x=Days, y=Confirmed), color="brown", size=1)+
  annotate(geom="text", x=20, y=250000, label="Russia",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10)) +
  scale_y_continuous(breaks= seq(0,450000, by=50000))+
  labs(title="Cases",x="Days", y="Cases " , size=5)

ggplot()+
  geom_line(data=complete_russia,aes(x=Days,y=Doubling.Rate.Cases.), color="brown",size=1)+
  annotate(geom="text", x=20, y=20, label="Russia",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10))+
  labs(title="Doubling Rate",x="Days", y="Doubling Rate " , size=5)
 
ggplot()+
  geom_line(data=complete_china,aes(x=Days,y=Doubling.Rate.Cases.), color="orange",size=1)+
  annotate(geom="text", x=35, y=70, label="China",size=5)+
  scale_x_continuous(breaks= seq(0,125 , by=10)) +
  labs(title="Doubling Rate",x="Days", y="Doubling Rate" , size=5)

ggplot()+
  geom_line(data=complete_china, aes(x=Days, y=Confirmed), color="orange", size=1)+
  annotate(geom="text", x=50, y=50000, label="China",size=5)+
  scale_x_continuous(breaks= seq(0,125 , by=10)) +
  labs(title="Cases",x="Days", y="Cases  " , size=5)

ggplot()+
  geom_line(data=complete_france, aes(x=Days, y=Confirmed), color="navy", size=1)+
  annotate(geom="text", x=25, y=150000, label="France",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Cases",x="Days", y="Cases " , size=5)

ggplot()+
  geom_line(data=complete_france,aes(x=Days,y=Doubling.Rate.Cases.), color="navy",size=1)+
  annotate(geom="text", x=25, y=40, label="France",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Doubling Rate",x="Days", y="Doubling Rate" , size=5)

ggplot()+
  geom_line(data=complete_usa, aes(x=Days, y=Confirmed), color="purple", size=1)+
  annotate(geom="text", x=30, y=1000000, label="USA",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  scale_y_continuous(breaks= seq(0,2000000 , by=200000)) +
  labs(title="Cases",x="Days", y="Cases " , size=15)

 ggplot()+
  geom_line(data=complete_usa,aes(x=Days,y=Doubling.Rate.Cases.), color="purple",size=1)+
  annotate(geom="text", x=15, y=25, label="USA",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Doubling Rate",x="Days", y="Doubling Rate " , size=15)

ggplot()+
  geom_line(data=complete_uk, aes(x=Days, y=Confirmed), color="deepskyblue", size=1)+
  annotate(geom="text", x=25, y=175000, label="United Kingdom",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  scale_y_continuous(breaks= seq(0,300000 , by=50000)) +
  labs(title="Cases",x="Days", y="Cases ", size=15)

 ggplot()+
  geom_line(data=complete_uk,aes(x=Days,y=Doubling.Rate.Cases.), color="deepskyblue",size=1)+
  annotate(geom="text", x=25, y=25, label="United Kingdom",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Doubling Rate",x="Days", y="Doubling Rate " , size=15)

ggplot()+
  geom_line(data=complete_italy, aes(x=Days, y=Confirmed), color="burlywood4", size=1)+
  annotate(geom="text", x=25, y=150000, label="Italy",size=5)+
  scale_x_continuous(breaks= seq(0,100, by=10)) +
  scale_y_continuous(breaks= seq(0,300000, by=50000))+
  labs(title="Cases",x="Days", y="Cases" , size=15)
 
ggplot()+
  geom_line(data=complete_italy,aes(x=Days,y=Doubling.Rate.Cases.), color="burlywood4",size=1)+
  annotate(geom="text", x=25, y=45, label="Italy",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  scale_y_continuous(breaks= seq(0,60, by=10))+
  labs(title="Doubling Rate",x="Days", y="Doubling Rate" , size=15)

ggplot()+
  geom_line(data=complete_spain, aes(x=Days, y=Confirmed), color="darkseagreen4", size=1)+
  annotate(geom="text", x=30, y=200000, label="Spain",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  scale_y_continuous(breaks= seq(0,300000 , by=50000))+
  labs(title="Cases",x="Days", y="Cases" , size=15)

ggplot()+
  geom_line(data=complete_spain,aes(x=Days,y=Doubling.Rate.Cases.), color="darkseagreen4",size=1)+
  annotate(geom="text", x=25, y=45, label="Spain",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Doubling Rate",x="Days", y="Doubling Rate " , size=15)

 ggplot()+
  geom_line(data=complete_iran, aes(x=Days, y=Confirmed), color="darkred", size=1)+
  annotate(geom="text", x=20, y=100000, label="Iran",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  scale_y_continuous(breaks= seq(0,200000 , by=20000)) +
  labs(title="Cases",x="Days", y="Cases " , size=15)

ggplot()+
  geom_line(data=complete_iran,aes(x=Days,y=Doubling.Rate.Cases.), color="darkred",size=1)+
  annotate(geom="text", x=25, y=35, label="Iran",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Doubling Rate",x="Days", y=" Doubling Rate" , size=15)

 ggplot()+
  geom_line(data=complete_germany, aes(x=Days, y=Confirmed), color="darksalmon", size=1)+
  annotate(geom="text", x=20, y=150000, label="Germany",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  scale_y_continuous(breaks= seq(0,200000 , by=50000)) +
  labs(title="Cases",x="Days", y="Cases" , size=15)

 ggplot()+
  geom_line(data=complete_germany,aes(x=Days,y=Doubling.Rate.Cases.), color="darksalmon",size=1)+
  annotate(geom="text", x=25, y=40, label="Germany",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Doubling Rate",x="Days", y="Doubling Rate" , size=15)

ggplot()+
  geom_line(data=complete_peru, aes(x=Days, y=Confirmed), color="deeppink", size=1)+
  annotate(geom="text", x=30, y=150000, label="Peru",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  scale_y_continuous(breaks= seq(0,180000 , by=20000))+
  labs(title="Cases",x="Days", y="Cases" , size=15)

ggplot()+
  geom_line(data=complete_peru,aes(x=Days,y=Doubling.Rate.Cases.), color="deeppink",size=1)+
  annotate(geom="text", x=25, y=15, label="Peru",size=5)+
  scale_x_continuous(breaks= seq(0,100 , by=10)) +
  labs(title="Doubling Rate",x="Days", y="Doubling Rate " , size=15)

dev.off()
