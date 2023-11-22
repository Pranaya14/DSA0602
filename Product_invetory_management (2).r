# Load necessary libraries
library(ggplot2)

# Create a sample data frame with product information and categories
product_data <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Product_Category = c("Category 1", "Category 2", "Category 1", "Category 2", "Category 3"),
  Quantity_Available = c(250, 175, 300, 200, 220)
)

# Create a stacked bar chart for quantity of each product within categories
ggplot(product_data, aes(x = Product_Category, y = Quantity_Available, fill = Product_Name)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Quantity of Each Product within Product Categories",
    x = "Product Category",
    y = "Quantity Available",
    fill = "Product Name"
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels if needed
