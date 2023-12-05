file_path <- E:/数据分析/1_1Yuanbo Zhang_aminer.cnprofileyuanbo-zhang542a4624dabfae864af93d5f.csv
csv_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, na.strings = , fill = TRUE)
nrow(csv_data)
ncol(csv_data)
# 创建一个空的行向量，用于存储列名
row_vector <- c()

# 将列名逐个添加到行向量中
for (i in 1:ncol(csv_data)) {
  column_name <- colnames(csv_data)[i]  # 获取列名
  row_vector <- c(row_vector, column_name)  # 将每个列名添加到行向量中
}

# 输出整个行向量
print(row_vector)


# 创建一个空列表，用于存储每列的数据
column_data_list <- list()

for (i in 1:ncol(csv_data)) {
  column_data <- csv_data[[i]]  # 选择第 i 列的数据并将其作为向量存储

  # 将每列数据存储到列表中
  column_data_list[[i]] <- column_data

  # 打印每列数据
  print(column_data)
}

# 输出存储了每列数据的列表
print(column_data_list)

df5 <- data.frame(doi = c(column_data_list[[1]]),
                  标题 = c(column_data_list[[2]]),
                  期刊 = c(column_data_list[[3]]),
                  年份 = c(column_data_list[[4]]),
                  作者 = c(column_data_list[[5]]))
summary(df5)
head(df5,2)
