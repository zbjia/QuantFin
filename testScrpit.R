# My first R script

x<- read.csv("courses.csv")

x$Course <- as.character(x$Course)

x$term<-as.character(x$Term.Desc)

#Replace missing Terms with Term.Desc for 2014
x$term <- ifelse(x$Term==200590, "Fall 2005", x$term)
x$term <- ifelse(x$Term==200620, "Spring 2006", x$term)
x$term <- ifelse(x$Term==200790, "Fall 2007", x$term)
x$term <- ifelse(x$Term==200820, "Spring 2008", x$term)
x$term <- ifelse(x$Term==201090, "Fall 2010", x$term)
x$term <- ifelse(x$Term==201120, "Spring 2011", x$term)
x$term <- ifelse(x$Term==201490, "Fall 2014", x$term)
x$term <- ifelse(x$Term==201520, "Spring 2015", x$term)

table(x$Term, x$term)
