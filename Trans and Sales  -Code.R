getwd()
LJ.Trans<- read.csv("LJ.trans.csv")
LJ.Sales<- read.csv("LJ.sales.csv")
install.packages("dplyr")
install.packages("tidyr")

library(dplyr)
library(tidyr)
#Question 1
customer <- c(123,638,525,247,795,638,247,525,903,123,123,646,638,689,123)
week <-rep(seq(from=1, to=4, by=1),c(6,4,3,2))
coffee <- rep(c("americano","espresso","latte","cappuccino","drip"),3)
spending <- c(10.5,3.75,14.75,9.8,2,3,2.5,17.7,4.9,6,7.5,7.5,2.95,2.45,7)
coffee_weekly_trans <- data.frame(customer, week, coffee, spending, stringAsFactors=FALSE)
coffee_weekly_trans

#Question 2

unitprice <- rep(c(1.5,1.25,2.95,2.45,1),3)
coffee_weekly_trans<-
  data.frame(customer,week,coffee,spending,unitprice,stringsAsFactors=FALSE)
coffee_weekly_trans
coffee_weekly_trans$quantity<-coffee_weekly_trans$spending / 
  coffee_weekly_trans$unitprice
coffee_weekly_trans
          
#Question 3
#using tidyr
mutate(coffee_weekly_trans,promo=ifelse(quantity>5 & coffee=="latte",1,0))

#The answer is ~
#Customer ID 123 in week #1
#Customer ID 638 in week #1
#Customer ID 525 in week #1
#Customer ID 247 in week #1
#Customer ID 795 in week #1
#Customer ID 638 in week #1
#Customer ID 247 in week #2
#Customer ID 525 in week #2
#Customer ID 903 in week #2
#Customer ID 123 in week #2
#Customer ID 123 in week #3
#Customer ID 646 in week #3
#Customer ID 638 in week #3
#Customer ID 689 in week #4
#Customer ID 123 in week #4


#Question 4
coffee_weekly_trans_sp<-
  aggregate(coffee_weekly_trans$spending,by=list(coffee_weekly_trans$customer),sum)
coffee_weekly_trans_sp
                                              
#Customer 123

#Question 5
kcal_to_kJ<-function(x){
  kJ<-(4.184)*(x)
  return(kJ)
}
kcal_to_kJ(700)


# the answer is 2928.8


#Question 6
n<-0
sum.sofar<-0
while(sum.sofar<=10000) {
  n<-n+1^2
  sum.sofar<-sum.sofar+n
}
print(n); print(sum.sofar)

#The answer is 141 and 10011


#Question 7
dim(LJ.Trans)
library(tidyr)
library(readr)
avg_spending <- read_csv("LJ.Trans.csv")
avg_spending<-subset(avg_spending, avg_spending$age>35 & avg_spending$city=="bloomington" & 
     avg_spending$sex=="female" & avg_spending$income>=74000 & 
     avg_spending$loyalty=="med" & avg_spending$distance.to.store<7)
avg_spending

 #the average spending value for the customer with these conditions is $10.195
     
#Question 8
generation_group <- 
  
  
#Question 9
  step1.data<-spread(LJ.Sales,channel,netsales)
step1.data
 
                      
#Question 10
tidy.data1<- separate(step1.data,offline,c("offline.sales", "offline.return"),sep= " - ")
tidy.data1
tidy.data<- separate(tidy.data1, online, c("online.sales","online.return"), sep = " - ")
tidy.data
