library(babynames) # devtools::install_github("hadley/babynames")
library(dplyr) # A fast, consistent tool for working with data frame like objects.
set.seed(0)
top10 <- babynames %>% filter(year==1990) %>% top_n(10,n) %>% select(name) %>% c %>% unlist %>% sample
names(top10) <- paste("Contestant",1:10)
print(top10)

fight <- function(x,y) sample(c(x,y),1,prob=c(2,1)/3)
Reduce(fight,top10) # set.seed(78);