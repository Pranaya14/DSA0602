# Load necessary libraries
library(ggplot2)

# Create a data frame with the given data
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3),
  Department = c("Sales", "HR", "Marketing"),
  Years_of_Service = c(5, 3, 7),
  Performance_Score = c(85, 92, 78)
)

# Create a line chart to visualize the performance trend of employees over time (Years of Service)
ggplot(employee_data, aes(x = Years_of_Service, y = Performance_Score, group = Employee_ID)) +
  geom_line(color = "blue") +
  geom_point(color = "red", size = 3) +
  labs(
    title = "Performance Trend of Employees Over Time",
    x = "Years of Service",
    y = "Performance Score",
    caption = "Employee ID"
  )
