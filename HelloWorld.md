# R Programming  
## Week 1  
***
>### Summary -- Data Types
> * atomic classes: numeric, logical, character, integerm complex
> * vectors, list
> * missing values
> * data frames
> * names
- list

##Below is my solution for the Quiz for Week 1 Q.17##  
# First find Temp higher than 90  
```a <- ozone$Temp > 90```  
# Keep rows with Temp higher than 90 and define the new matrix as ***test***  
```test <- ozone[a,]```  
# Find Ozone value higher than 31  
```b <- test$Ozone > 31```  
# Keep rows in ***test*** with Ozone value higher than 31 and define the new matrix as ***anw***  
```anw <- test[b,]```  
# Get rid of NAs
```b <- is.na(anw[c(2)])```  
```output <- anw[[!b]]```
# Calculate the mean of Solar.R  
# Since I keep getting Warning message:"In mean.default(output[c(2)]) :argument is not numeric or logical: returning NA" I have to use sum/nrow
```> c <- factor(output[c(2)])```  
``` sum(c)/nrow(c)```  

