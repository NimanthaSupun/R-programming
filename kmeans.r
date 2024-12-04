
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


# todo: explain
Workspace
The provided R script performs k-means clustering on the famous Iris dataset. The script begins by loading the dataset into a variable named data and then uses the View function to display the dataset in a spreadsheet-like format for easy inspection.

Next, the script applies the k-means clustering algorithm to the first four columns of the dataset, which correspond to the measurements of sepal length, sepal width, petal length, and petal width. The number of clusters is set to 3, which is appropriate for the Iris dataset as it contains three species of iris flowers. The result of the clustering is stored in the variable result.

The script then retrieves and prints the number of observations in each cluster using result$size. This provides insight into how the data points are distributed among the clusters.

To evaluate the clustering performance, the script creates a contingency table using the table function. This table compares the actual species labels (data$Species) with the cluster assignments (result$cluster), allowing the user to see how well the clustering algorithm has grouped the data points according to their species.

For visual analysis, the script generates two scatter plots. The first plot visualizes the k-means clustering results based on petal length and petal width, with points colored according to their cluster assignments. The second plot shows the actual species grouping based on the same features, with points colored according to their species. By comparing these plots, the user can visually assess the accuracy of the clustering algorithm.

Overall, this script provides a comprehensive approach to performing and evaluating k-means clustering on the Iris dataset, combining numerical and visual methods to assess the clustering results.