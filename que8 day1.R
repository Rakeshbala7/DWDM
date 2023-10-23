marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
num_bins_eq_freq <- 3
bin_size_eq_freq <- length(marks) %/% num_bins_eq_freq
bins_eq_freq <- cut(marks, breaks = quantile(marks, probs = seq(0, 1, length.out = num_bins_eq_freq + 1), na.rm = TRUE), include.lowest = TRUE)
min_mark <- min(marks)
max_mark <- max(marks)n
bin_width_eq_width <- (max_mark - min_mark) / num_bins_eq_freq
bins_eq_width <- cut(marks, breaks = seq(min_mark, max_mark, by = bin_width_eq_width), include.lowest = TRUE)
par(mfrow = c(1, 2))
hist(marks, breaks = levels(bins_eq_freq), col = 'blue', main = 'Equal-frequency Partitioning', xlab = 'Marks', ylab = 'Frequency')
hist(marks, breaks = levels(bins_eq_width), col = 'green', main = 'Equal-width Partitioning', xlab = 'Marks', ylab = 'Frequency')