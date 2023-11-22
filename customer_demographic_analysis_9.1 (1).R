# Load necessary libraries
library(ggplot2)

# Create a data frame with the given customer data
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Create a bar chart for the distribution of customer ages
ggplot(customer_data, aes(x = factor(Customer_ID), y = Age, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.6) +
  labs(
    title = "Distribution of Customer Ages by Gender",
    x = "Customer ID",
    y = "Age",
    fill = "Gender"
  ) +
  theme_minimal() +
  theme(legend.position = "top")
