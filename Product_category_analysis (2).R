# Load necessary libraries
library(ggplot2)

# Create a data frame with the given data
conversion_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Leads = c(200, 150, 180),
  Prospects = c(120, 100, 130),
  Customers = c(80, 70, 90)
)

# Transform data into long format for plotting
library(tidyr)
conversion_data_long <- pivot_longer(conversion_data, cols = -Category, names_to = "Stage", values_to = "Count")

# Create a bar chart to analyze the sales conversion process for each product category
ggplot(conversion_data_long, aes(x = Category, y = Count, fill = Stage)) +
  geom_bar(stat = "identity", position = "stack", color = "white") +
  labs(
    title = "Sales Conversion Process for Each Product Category",
    x = "Product Category",
    y = "Count",
    fill = "Stage"
  )
