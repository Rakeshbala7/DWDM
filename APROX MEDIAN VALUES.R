intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)
cumulative_freq <- cumsum(frequencies)
total_data_points <- sum(frequencies)
median_point <- total_data_points / 2
median_class <- intervals[which(cumulative_freq >= median_point)[1]]
lower_bound <- as.numeric(sub("-.*", "", median_class))
upper_bound <- as.numeric(sub(".*-", "", median_class))
class_width <- upper_bound - lower_bound
median_value <- lower_bound + ((median_point - cumulative_freq[which(intervals == median_class) - 1]) / frequencies[which(intervals == median_class)]) * class_width
cat("Approximate Median Value:", median_value, "\n")
