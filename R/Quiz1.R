## Coursera Quiz 1
library("R.utils") ## for countLines
source("./R/fileReader.R") ## for file connections

#1
file.info("./data/en_US/en_US.blogs.txt")$size/(1024^2)

#2
countLines("./data/en_US/en_US.twitter.txt")

#3
max(nchar(readLines("./data/en_US/en_US.blogs.txt")), T)
max(nchar(readLines("./data/en_US/en_US.news.txt")), T)
max(nchar(readLines("./data/en_US/en_US.twitter.txt")), T)

#4
twitterEN <- openFileConnection("./data/en_US/en_US.twitter.txt")
love <- length(grep("love", readLines(twitterEN)))
close(twitterEN)
twitterEN <- openFileConnection("./data/en_US/en_US.twitter.txt")
hate <- length(grep("hate", readLines(twitterEN)))
close(twitterEN)

love/hate

#5
twitterEN <- openFileConnection("./data/en_US/en_US.twitter.txt")
grep("biostats", readLines(twitterEN), value = T, perl = T)
close(twitterEN)

#6
twitterEN <- openFileConnection("./data/en_US/en_US.twitter.txt")
grep("A computer once beat me at chess, but it was no match for me at kickboxing", readLines(twitterEN), value = T, perl = T)
close(twitterEN)
