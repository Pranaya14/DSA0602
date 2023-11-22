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

# Reshape the data from wide to long format for stacked area chart
data_long_stacked <- YourDataset %>%
  pivot_longer(cols = starts_with("January"), names_to = "Month", values_to = "Sales") %>%
  group_by(Product_Name) %>%
  summarise(Total_Sales = sum(Sales))

# Create a stacked area chart to represent the overall sales trend for all products over the three months
ggplot(data_long_stacked, aes(x = Month, y = Total_Sales, fill = Product_Name)) +
  geom_area() +
  labs(
    title = "Overall Sales Trend for All Products (First Quarter)",
    x = "Month",
    y = "Total Sales",
    fill = "Product Name"
  )
