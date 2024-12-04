
install.packages('rpart')
install.packages('rpart.plot')
library(rpart)
library(rpart.plot)
library(caTools)


View(Titanic)
#Load the dataset and convert it to tabular form
dataset<-as.data.frame(Titanic) #Convert in to row & column
View(dataset)

#Convert survived column into a factor   
dataset$Survived<-as.factor(dataset$Survived)

split<-sample.split(dataset,splitRatio = 0.7)

#Create the training set
training_set<-subset(dataset,split=TRUE)

#Create the testing set
testing_data<-subset(dataset,split=FALSE)

#building the decision tree using trainind dataset
tree<-rpart(Survived ~.,training_set,method="class")

#Summary of the decision tree
summary(tree)

#plotting the decision tree
r=rpart.plot(tree)
prp(tree,extra = 3)

# todo: explaination
Workspace
The provided R script demonstrates how to build and visualize a decision tree using the Titanic dataset. The script begins by installing and loading the necessary packages: rpart for creating decision trees, rpart.plot for plotting them, and caTools for splitting the dataset.

The Titanic dataset is loaded and converted into a tabular form using as.data.frame, making it easier to manipulate. The View function is used to display the dataset for inspection. The script then converts the Survived column into a factor, which is essential for classification tasks as it indicates the categorical nature of the target variable.

Next, the dataset is split into training and testing sets using the sample.split function from the caTools package, with 70% of the data allocated to the training set and the remaining 30% to the testing set. This split ensures that the model can be trained on one subset of the data and evaluated on another, helping to assess its performance.

The decision tree is built using the rpart function, with Survived as the target variable and all other columns as predictors. The method="class" argument specifies that this is a classification problem. The summary function is then used to provide a detailed summary of the decision tree, including information about the splits, nodes, and variable importance.

Finally, the decision tree is visualized using the rpart.plot and prp functions. The rpart.plot function creates a basic plot of the tree, while the prp function provides a more detailed plot with additional information, such as the number of observations and the class probabilities at each node.

Overall, this script provides a comprehensive approach to building, summarizing, and visualizing a decision tree for the Titanic dataset, enabling users to understand the decision-making process of the model.