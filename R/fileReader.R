openFileConnection <- function(filepath){
        file <- file(filepath, open = "rb")
}

countLines <- function(fileConnection){
        length(readLines(fileConnection))
}