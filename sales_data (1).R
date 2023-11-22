# Load necessary libraries
library(ggplot2)

# Create a data frame with the given customer data
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Age = c(28, 35, 42, 30, 45),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)

# Create a histogram for the distribution of customer ages
ggplot(customer_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Customer Ages",
    x = "Age",
    y = "Frequency"
  )
