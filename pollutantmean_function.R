pollutantmean <- function(x) {if (x == "sulfate")
  {mean(a$sulfate[!is.na(a$sulfate)])}
    else {mean(a$nitrate[!is.na(a$nitrate)])}}
pollu1 <- function(x) {setwd(x)}
readx <- function(x) {list.files(pattern="*.csv")[x]}
  
  do.call(rbind, lapply(temp, function(y) read.csv(y, stringsAsFactors = FALSE)))
  
ready <- function(x) { temp <- list.files(pattern="*.csv")[x];
  do.call(rbind, lapply(temp, function(y) read.csv(y, stringsAsFactors = FALSE)))}