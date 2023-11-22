# Load necessary libraries
library(ggplot2)

# Example data (replace this with your dataset)
# Let's assume you have variables 'Price' and 'Quantity_Available'
# Replace 'YourDataset' with the name of your dataset
YourDataset <- data.frame(
  Price = c(10, 15, 20, 25, 30),
  Quantity_Available = c(25, 20, 30, 35, 40)
)

# Create a scatter plot to explore the relationship between price and quantity available
ggplot(YourDataset, aes(x = Price, y = Quantity_Available)) +
  geom_point(color = "red") +
  labs(
    title = "Relationship Between Product Price and Quantity Available",
    x = "Price",
    y = "Quantity Available"
  )
