# Load necessary libraries
library(knitr)

# Create a data frame with the given sales data
sales_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Create a table to display sales data for each product category
kable(sales_data, 
      caption = "Sales Data for Each Product Category",
      col.names = c("Product Category", "Sales (in $)"),
      align = c("l", "c")
)
