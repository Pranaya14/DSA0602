# Load necessary libraries
library(ggplot2)

# Create a data frame with the given customer satisfaction data
customer_satisfaction <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)

# Calculate the count of each satisfaction score
score_counts <- table(customer_satisfaction$Satisfaction_Score)

# Create a data frame for the pie chart
pie_data <- data.frame(
  Satisfaction_Score = factor(names(score_counts), levels = names(score_counts)),
  Count = as.numeric(score_counts)
)

# Create a pie chart to represent the distribution of customer satisfaction scores
ggplot(pie_data, aes(x = "", y = Count, fill = Satisfaction_Score)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  labs(
    title = "Distribution of Customer Satisfaction Scores",
    fill = "Satisfaction Score",
    y = NULL
  ) +
  geom_text(aes(label = paste(Satisfaction_Score, ": ", Count)), 
            position = position_stack(vjust = 0.5))
