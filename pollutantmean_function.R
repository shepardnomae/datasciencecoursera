pollutantmean <- function(x) {if (x == "sulfate")
  {mean(a$sulfate[!is.na(a$sulfate)])}
    else {mean(a$nitrate[!is.na(a$nitrate)])}}
pollu1 <- function(x) {setwd(x)}
readx <- function(x) {list.files(pattern="*.csv")[x]}
  
  do.call(rbind, lapply(temp, function(y) read.csv(y, stringsAsFactors = FALSE)))
  
ready <- function(x) { temp <- list.files(pattern="*.csv")[x];
  do.call(rbind, lapply(temp, function(y) read.csv(y, stringsAsFactors = FALSE)))}

# Let's finish homework question 1!!
pollutantmean <- function(x, y, z) {
  if (x == "specdata") 
  {setwd("/Users/tongkimu/Documents/RStudio/datasciencecoursera/specdata")}
  else {print("Unknown Div")};
      temp <- list.files(pattern="*.csv")[z];
      temp2 <- do.call(rbind, lapply(temp, function(a) read.csv(a, stringsAsFactors = FALSE)));
  if (y == "sulfate")
  {mean(temp2$sulfate[!is.na(temp2$sulfate)])}
  else {mean(temp2$nitrate[!is.na(temp2$nitrate)])}
}

# Homework 2
# id complete
complete_print.nobs <- function(x, y) {
    temp <- list.files(pattern="*.csv")[y];
    sum(complete.cases(read.csv(temp)))
}

a = 1
if (a < length(y)){
  temp <- list.files(pattern="*.csv")[y[a]];
  sum(complete.cases(read.csv(temp)))
  a + 1
}
data.frame(id = c(1:x), d = c(2:11))
  
  
test1 <- function(y) {
  a = 1;
  if (a < length(y)){
    temp <- list.files(pattern="*.csv")[y[a]];
    sum(complete.cases(read.csv(temp)));
    a = a + 1
  }
  else {
    temp <- list.files(pattern="*.csv")[y[a]];
    sum(complete.cases(read.csv(temp)))
  }
}

test2 <- function(y) {
  a <-1
  repeat {
    temp <- list.files(pattern="*.csv")[y[a]];
    sum(complete.cases(read.csv(temp)))
    a = a + 1
    if (a == length(y)) {
      break
    }
  }
}
  
# Homework 2 - Final
complete <- function(path, id = 1:332){
  # Define the dimension of data.results
  results <- data.frame(id=numeric(0), nobs=numeric(0))
  #start for loop
    for (i in id){
      #IMPORTANT with sprintf(, xxx) xxx argument should be a 1*1 vector
      path <- paste(getwd(), "/", sprintf("%03d", i), ".csv", sep = "")
      i_data <- read.csv(path)
      nobs <- sum(complete.cases(i_data))
      results <- rbind(results, data.frame(id = i, nobs = nobs))
    }
  # print results
  results
#path is not used after all
}



