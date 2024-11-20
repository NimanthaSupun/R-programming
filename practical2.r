
# crete data frame 
df <- data.frame(
    fruit = c("Apple", "Banana", "Grapes"),
    Quantity = c(10,20,30)
)
df

# add new row to df 
new_df <- rbind(df, c("Orange",12))
new_df


# . Create a function multiply that takes two arguments, but one of 
# them should have a default value of 2. Multiply both values and 
# return the result

new_fun <- function(x,y=2){
    return(x*y)
}

print(new_fun(34))

# Write a function half that takes a number and returns half of it.

half <- function(num) {
    return(num/2)

}

print(half(20))

# function min_max_difference that takes a numeric vector 
# and returns the minimum value, maximum value, and the 
# difference between them.

min_max_difference <- function(vectors){
    max_num <- max(vectors)
    min_num <- min(vectors)
    diff_num <- max_num - min_num

    list <- list(Max_num = max_num, Min_num = min_num, Diff_num = diff_num)
    
    return(list)
}  

vec <- c(10,20,54,834,3)
print(min_max_difference(vec))


# recursive function sum_recursive that returns the sum of 
# all numbers from 1 to n.

get_sum <- function(num) {

    if(num <= 1) {
        return(num)
    } else {
        return(num + get_sum(num - 1))
    }
}

print(get_sum(10))



