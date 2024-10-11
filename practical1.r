
# crate data frame with NA values


data <- data.frame(
  col1 = c(100, 200, 300, 300, NA),
  col2 = c(100, 200, 300, 300, NA),
  col3 = c(100, 200, 300, 300, NA),
  col4 = c("Benz", "Toyota", "Toyota","Ferrai", NA)
)


# find a mean value in colum1 and replace that value to NA place

data$col1[is.na(data$col1)] <- mean(data$col1, na.rm = TRUE)
data

# find a Mode value in colum2 and replace that value to NA place

data$col2[is.na(data$col2)] <- as.numeric(names(which.max(table(data$col2))))
data


# find a median value in colum3 and replace that value to NA place

data$col3[is.na(data$col3)] <- median(data$col3, na.rm = TRUE)
data

# find a mode value in colum4 and replace that value to NA place

data[5,4] <- names(which.max(table(data$col4)))
data
