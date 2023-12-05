file_path <- "E:/数据分析/1_1Yuanbo Zhang_aminer.cnprofileyuanbo-zhang542a4624dabfae864af93d5f.csv" 
csv_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, na.strings = "", fill = TRUE)

# Create an empty data frame with the same number of columns as csv_data
df <- data.frame(matrix(nrow = nrow(csv_data), ncol = ncol(csv_data)))

# Set data frame's column names to match csv_data's column names
colnames(df) <- colnames(csv_data)

# Use a loop to assign column data to df
for (i in 1:ncol(csv_data)) {
  df[[i]] <- csv_data[[i]]  # Assign column data directly to df
}

# Print the new data frame
print(df)

# Summarize the data frame
summary(df)
