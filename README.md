# Acadgild_Assignment-2.2
Assignment 2.2
Parse the following JSON into a data frame
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'
3. Write a script for variable binning using R.
Answer: The sample JSON files text1, text2, & test3 are present in the folder"json" under the below local path
"C:\Users\Celebrity\Desktop\Data Analytics File\Acadgild". 
Jsonlite & dyplr packages are installed & then below shown commands are executed to convert them into dataset.
> x<-read.delim("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text1.json")
> View(x)
> y<-read.delim("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text2.json")
> View(y)
> z<-read.delim("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text3.json")
> View(z)
> library(jsonlite)
> library(plyr)
> jd<- as.data.frame(do.call("rbind", c(x,y,z)))
> View(jd)
