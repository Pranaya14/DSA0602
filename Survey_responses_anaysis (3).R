library(knitr)

# Create a data frame with the given data
survey_data <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)

# Create a table to display survey response data for each survey
kable(survey_data, 
      caption = "Survey Response Data",
      col.names = c("Survey ID", "Question 1", "Question 2", "Question 3"),
      align = c("l", "c", "c", "c")
)
