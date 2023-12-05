# 读取数据
file_path <- E:/数据分析/1_1Yuanbo Zhang_aminer.cnprofileyuanbo-zhang542a4624dabfae864af93d5f.csv 
csv_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, na.strings = , fill = TRUE)


# 创建一个空的数据框，列数与csv_data的列数相同
df <- data.frame(matrix(nrow = nrow(csv_data), ncol(csv_data)))

# 设置数据框的列名为csv_data的列名
colnames(df) <- colnames(csv_data)

# 使用一个循环逐一将csv_data的列数据赋值给df
for (i in 1:ncol(csv_data)) {
  column_data <- csv_data[[i]]  # 选择第 i 列的数据
  
  # 将列数据赋值给df的相应列
  df[[i]] <- column_data
}

# 打印新的数据框
print(df)
summary(df)
