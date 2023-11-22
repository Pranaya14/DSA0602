# Load necessary libraries
library(ggplot2)
library(tidyr)

# Example data (replace this with your dataset)
# Let's assume you have a dataset with Product ID, Product Name, January Sales, February Sales, and March Sales
# Replace 'YourDataset' with the name of your dataset
YourDataset <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

# Reshape the data from wide to long format for grouped bar chart
data_long <- YourDataset %>%
  pivot_longer(cols = starts_with("January"), names_to = "Month", values_to = "Sales")

# Create a grouped bar chart for sales of each product for the first quarter
ggplot(data_long, aes(x = Product_Name, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Sales of Each Product for the First Quarter",
    x = "Product Name",
    y = "Sales",
    fill = "Month"
  )
