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

# Create a stacked bar chart for the overall distribution of responses for all questions
ggplot(survey_data_long, aes(x = Survey_ID, fill = Answer)) +
  geom_bar(position = "stack") +
  labs(
    title = "Overall Distribution of Responses for All Questions",
    x = "Survey ID",
    y = "Count",
    fill = "Answer"
  )
