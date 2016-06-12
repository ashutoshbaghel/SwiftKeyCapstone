library("R.utils") ## for countLines

blogsEN <- openFileConnection("./data/en_US/en_US.blogs.txt")
newsEN <- openFileConnection("./data/en_US/en_US.news.txt")
twitterEN <- openFileConnection("./data/en_US/en_US.twitter.txt")

readLines(twitterEN, 5)
countLines(twitterEN)

max(nchar(readLines(blogsEN)), T)
max(nchar(readLines(newsEN)), T)
max(nchar(readLines(twitterEN)), T)

close(blogsEN)
close(newsEN)
close(twitterEN)

# create some sample data from corpus
sampleData <- character()
blogsEN <- openFileConnection("./data/en_US/en_US.blogs.txt")
newsEN <- openFileConnection("./data/en_US/en_US.news.txt")
twitterEN <- openFileConnection("./data/en_US/en_US.twitter.txt")
sampleData <-append(sampleData, readLines(blogsEN, 25))
sampleData <-append(sampleData, readLines(newsEN, 25))
sampleData <-append(sampleData, readLines(twitterEN, 25))
close(blogsEN)
close(newsEN)
close(twitterEN)

## Try {tm} tokenizers
source("./R/fileReader.R")
twitterEN <- openFileConnection("./data/en_US/en_US.twitter.txt")
sampleData <- readLines(twitterEN, 5)
close(twitterEN)

scan_tokenizer(sampleData)
MC_tokenizer(sampleData)

## Regex func to use
# grep, grepl
?grep
length(grep("love", sampleData))
sum(grepl("love", sampleData))
