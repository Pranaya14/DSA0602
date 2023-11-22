# Load necessary libraries
library(ggplot2)
library(dplyr)

# Create a data frame with the given data
data <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 35, 28, 40),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)

# Define age groups (you can define your own groups)
data$Age_Group <- cut(data$Age, breaks = c(20, 30, 40, 50), labels = c("20-30", "31-40", "41-50"), include.lowest = TRUE)

# Aggregate data by age group and satisfaction score
grouped_data <- data %>%
  group_by(Age_Group, Satisfaction_Score) %>%
  summarise(Count = n())

# Create a stacked bar chart
ggplot(grouped_data, aes(x = Age_Group, y = Count, fill = factor(Satisfaction_Score))) +
  geom_bar(stat = "identity", position = "stack") +
  labs(
    title = "Distribution of Customer Satisfaction Scores by Age Group",
    x = "Age Group",
    y = "Count",
    fill = "Satisfaction Score"
  )
