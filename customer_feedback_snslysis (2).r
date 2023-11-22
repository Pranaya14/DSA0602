# Load necessary libraries
library(ggplot2)

# Create a data frame with the given data
data <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 35, 28, 40),
  Satisfaction_Score = c(4, 5, 3, 4, 5)
)

# Calculate counts of each satisfaction score
score_counts <- table(data$Satisfaction_Score)

# Create a data frame for pie chart
pie_data <- data.frame(
  Satisfaction_Score = as.numeric(names(score_counts)),
  Count = as.numeric(score_counts)
)

# Create a pie chart
ggplot(pie_data, aes(x = "", y = Count, fill = factor(Satisfaction_Score))) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  labs(
    title = "Distribution of Customer Satisfaction Scores",
    fill = "Satisfaction Score",
    y = NULL
  ) +
  geom_text(aes(label = paste0(Count)), position = position_stack(vjust = 0.5)) +
  scale_fill_discrete(name = "Satisfaction Score", labels = c("3", "4", "5"))  # Specify labels if needed
