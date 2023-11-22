# Load necessary libraries
library(ggplot2)
library(tidyr)

# Create a data frame with the given data
survey_data <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)

# Reshape data to long format for plotting
survey_data_long <- gather(survey_data, key = "Question", value = "Answer", -Survey_ID)

# Filter data for Question 1
question_1_data <- subset(survey_data_long, Question == "Question_1")

# Create a grouped bar chart for the distribution of answers for Question 1
ggplot(question_1_data, aes(x = Answer, fill = Answer)) +
  geom_bar(stat = "count") +
  labs(
    title = "Distribution of Answers for Question 1",
    x = "Answers",
    y = "Count",
    fill = "Answers"
  )
