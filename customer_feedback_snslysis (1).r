# Load necessary library
library(ggplot2)

# Create a data frame with the given data
data <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 35, 28, 40),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)

# Create a histogram for customer ages
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Customer Ages",
    x = "Age",
    y = "Frequency"
  )

