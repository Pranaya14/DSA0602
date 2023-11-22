# Load necessary libraries
library(ggplot2)

# Create a data frame with the given employee data
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Name = c("John Smith", "Jane Doe", "Robert Brown", "Sarah White", "Michael Lee"),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

# Create a histogram for the distribution of Years of Service
ggplot(employee_data, aes(x = Years_of_Service)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Employee Years of Service",
    x = "Years of Service",
    y = "Frequency"
  )
