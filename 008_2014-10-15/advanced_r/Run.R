setwd('/Users/mikhail/Sync/Bearloga/Blog Posts and Talks/A Short Tutorial on Some Neat Stuff')

rmarkdown::run("Interactive-Talk.Rmd", shiny_args = list(port = 6831))
