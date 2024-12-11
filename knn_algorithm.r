

# The provided R script demonstrates how to implement the k-Nearest Neighbors (k-NN) algorithm using the Iris dataset. The script begins by installing and loading the necessary packages: e1071 for various machine learning algorithms, caTools for data splitting, and class for the k-NN algorithm.

# The Iris dataset is then loaded, and the first few rows are displayed using the head function to provide an overview of the data. The dataset is split into training and testing sets using the sample.split function from the caTools package, with 70% of the data allocated to the training set and the remaining 30% to the testing set. This split ensures that the model can be trained on one subset of the data and evaluated on another, helping to assess its performance.

# Feature scaling is performed on the training and testing sets using the scale function, which standardizes the features to have a mean of 0 and a standard deviation of 1. This step is crucial for k-NN, as it ensures that all features contribute equally to the distance calculations.

# The k-NN model is then fitted to the training dataset using the knn function from the class package. The train argument specifies the scaled training features, the test argument specifies the scaled testing features, the cl argument specifies the class labels for the training set, and the k argument specifies the number of neighbors to consider (in this case, k=1). The resulting classifier is stored in the variable classifier_knn.

# Finally, the script creates a confusion matrix using the table function to compare the actual species labels of the testing set (test_cl$Species) with the predicted labels from the k-NN classifier (classifier_knn). The confusion matrix provides a summary of the classification performance, showing how many instances were correctly or incorrectly classified for each species.

# Overall, this script provides a step-by-step approach to implementing and evaluating a k-NN classifier on the Iris dataset, including data splitting, feature scaling, model fitting, and performance evaluation.


# Installing Packages 
install.packages("e1071") 
install.packages("caTools") 
install.packages("class") 

# Loading package 
library(e1071) 
library(caTools) 
library(class) 

# Loading data 
data(iris) 
head(iris)

# Splitting data into train and test data 
split <- sample.split(iris, SplitRatio = 0.7) 
train_cl <- subset(iris, split == "TRUE") 
test_cl <- subset(iris, split == "FALSE") 

# Feature Scaling 
train_scale <- scale(train_cl[, 1:4]) 
test_scale <- scale(test_cl[, 1:4]) 


head(train_scale)
head(test_scale)


# Fitting KNN Model to training dataset 
classifier_knn <- knn(train = train_scale, 
                      test = test_scale, 
                      cl = train_cl$Species, 
                      k = 1) 
classifier_knn 

# Confusiin Matrix 
cm <- table(test_cl$Species, classifier_knn) 
cm 





