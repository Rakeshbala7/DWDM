pencil_counts <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_value <- mean(pencil_counts)
median_value <- median(pencil_counts)
get_mode <- function(x) {
  unique_x <- unique(x)
  counts <- tabulate(match(x, unique_x))
  mode <- unique_x[which.max(counts)]
  return(mode)
}
mode_value <- get_mode(pencil_counts)
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))
