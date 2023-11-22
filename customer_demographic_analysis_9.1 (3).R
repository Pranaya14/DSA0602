# Load necessary libraries
library(knitr)

# Create a data frame with the given customer data
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Create a table to display demographic information for each customer
kable(customer_data, 
      caption = "Demographic Information for Each Customer",
      col.names = c("Customer ID", "Age", "Gender", "Income"),
      align = c("l", "c", "c", "c")
)
