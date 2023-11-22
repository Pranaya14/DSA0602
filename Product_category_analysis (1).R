# Load necessary libraries
library(ggplot2)

# Create a data frame with the given data
sales_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Create a pie chart to represent the distribution of sales across product categories
ggplot(sales_data, aes(x = "", y = Sales, fill = Category)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  labs(
    title = "Distribution of Sales Across Product Categories",
    fill = "Category",
    y = NULL
  ) +
  geom_text(aes(label = paste(Category, ": $", Sales)), 
            position = position_stack(vjust = 0.5), size = 3)
