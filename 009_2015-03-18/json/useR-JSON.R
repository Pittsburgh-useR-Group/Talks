#  Sam Ventura
#  18 March 2015
#  JSON / R

#  install and load necessary packages
#install.packages("RJSONIO")
#install.packages("RCurl")
library(RJSONIO)
library(RCurl)

#  Get the JSON data from a URL
my.url <- "http://stats.tsn.ca/HGET/urn:tsn:nhl:team:pittsburgh-penguins/roster?type=json"
json <- fromJSON(getURL(my.url))

#  Explore the data
class(json)
length(json)
names(json)
length(json$Players[[1]])
json$Players[[1]]

#  Convert the data you want into a data.frame
my.dtf <- data.frame(do.call(rbind, json$Players))
#my.dtf <- data.frame(t(sapply(json$Players, c)))
head(my.dtf)

#  Create a JSON object from a data.frame, save it to a text file
r.to.json <- toJSON(my.dtf)
write.table(r.to.json, file = "Desktop/r.to.json.txt")
