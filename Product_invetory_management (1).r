# Load necessary libraries
library(ggplot2)

# Create a data frame with the given data
product_data <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity_Available = c(250, 175, 300, 200, 220)
)

# Create a bar chart for quantity of each product
ggplot(product_data, aes(x = Product_Name, y = Quantity_Available)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(
    title = "Quantity of Each Product in Inventory",
    x = "Product Name",
    y = "Quantity Available"
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels if needed
