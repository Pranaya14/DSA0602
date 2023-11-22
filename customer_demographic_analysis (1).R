# Load necessary library
library(ggplot2)

# Create a data frame with the given data
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Create a bar chart for the distribution of customer ages
ggplot(customer_data, aes(x = as.factor(Customer_ID), y = Age)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Customer Ages",
    x = "Customer ID",
    y = "Age"
  )

