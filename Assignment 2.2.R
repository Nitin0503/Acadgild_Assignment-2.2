library(jsonlite)
x<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text2.JSON")
y<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text2.JSON")
z<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text2.JSON")
a<-as.data.frame(do.call("rbind",y))
y<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text1.JSON")
z<-read_json("C:\\Users\\Celebrity\\Desktop\\Data Analytics File\\Acadgild\\text3.JSON")
a<-as.data.frame(do.call("rbind",y))
b<-as.data.frame(do.call("rbind",x))
c<-as.data.frame(do.call("rbind",z))
a
b
c
p=rbind(a,b,c)
p
