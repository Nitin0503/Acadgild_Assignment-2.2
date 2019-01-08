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
> y<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text1.JSON")
> x<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text2.JSON")
> z<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text3.JSON")
> a<-as.data.frame(do.call("rbind",y))
> b<-as.data.frame(do.call("rbind",x))
> c<-as.data.frame(do.call("rbind",z))
> a
  name species                       foods
1  abx     cat tuna, catnip, ham, zucchini
2  Bcd     dog        bones, carrots, tuna
3  egg     cat           mice, nn, cookies
> b
   name species                       foods
1   Meo     cat tuna, catnip, ham, zucchini
2 Barky     dog        bones, carrots, tuna
3 Purws     cat                    a, nn, s
> c
      name species                       foods
1   Meowsy     cat tuna, catnip, ham, zucchini
2    Barky     dog        bones, carrots, tuna
3 Purrpaws     cat           mice, nn, cookies
p=rbind(a,b,c)
> p
      name species                       foods
1      abx     cat tuna, catnip, ham, zucchini
2      Bcd     dog        bones, carrots, tuna
3      egg     cat           mice, nn, cookies
4      Meo     cat tuna, catnip, ham, zucchini
5    Barky     dog        bones, carrots, tuna
6    Purws     cat                    a, nn, s
7   Meowsy     cat tuna, catnip, ham, zucchini
8    Barky     dog        bones, carrots, tuna
9 Purrpaws     cat           mice, nn, cookies
