
data<-iris
View(iris)

# use [1:4]  or [-5]get data from column 1 to 4 data
# 3 is number of clusters
result<-kmeans(data[,1:4],3)

#number of observation for each clusters
result$size

#Matrix
table(data$Species,result$cluster)

#Visual representation of kmeans clustering based on pental length and width 
plot(data[c("Petal.Length","Petal.Width")],col=result$cluster)


#actual grouping based on pental length and width
plot(data[c("Petal.Length","Petal.Width")],col=data$Species)

