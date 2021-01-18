pollutantmean <- function(x) {if (x == "sulfate")
  {mean(a$sulfate[!is.na(a$sulfate)])}
  else {mean(a$nitrate[!is.na(a$nitrate)])}}