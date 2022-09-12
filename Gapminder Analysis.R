gapminder_alcohol <- read.csv("gapminder_alcohol.csv")
no_na_gapminder_alc<- as.vector(na.omit(gapminder_alcohol))
library(ggplot2)
plot(suicideper100th ~ alcconsumption, data=no_na_gapminder_alc,
     xlab="Alcohol Consumption", ylab="Suicide per 100th Percentile")
      abline(model1, col='blue')





Model1 <- lm(suicideper100th ~ alcconsumption, data = no_na_gapminder_alc)
str(Model1)


glm

library(corrplot)

lm(suicideper100th ~ alcconsumption, data=no_na_gapminder_alc)