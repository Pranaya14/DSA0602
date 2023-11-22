# Load necessary libraries
library(ggplot2)

# Create a data frame with the given customer data
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Calculate the count of customers by gender
gender_counts <- table(customer_data$Gender)

# Create a data frame for the pie chart
pie_data <- data.frame(
  Gender = factor(names(gender_counts), levels = names(gender_counts)),
  Count = as.numeric(gender_counts)
)

# Create a pie chart to represent the distribution of customers by gender
ggplot(pie_data, aes(x = "", y = Count, fill = Gender)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  labs(
    title = "Distribution of Customers by Gender",
    fill = "Gender",
    y = NULL
  ) +
  geom_text(aes(label = paste(Gender, ": ", Count)), 
            position = position_stack(vjust = 0.5))

