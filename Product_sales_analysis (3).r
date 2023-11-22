# Load necessary libraries
library(knitr)

# Example data (replace this with your dataset)
# Let's assume you have a dataset with Product Name, January Sales, February Sales, and March Sales
# Replace 'YourDataset' with the name of your dataset
YourDataset <- data.frame(
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

# Display the table of monthly sales data for each product
kable(YourDataset, format = "markdown") %>%
  kable_styling() %>%
  add_header_above(c("Product" = 1, "January" = 1, "February" = 1, "March" = 1))
