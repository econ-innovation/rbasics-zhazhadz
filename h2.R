# 读取数据
file_path <- E:/数据分析/1_1Yuanbo Zhang_aminer.cnprofileyuanbo-zhang542a4624dabfae864af93d5f.csv 
csv_data <- read.csv(file_path, header = TRUE, stringsAsFactors = FALSE, na.strings = , fill = TRUE)

# 使用lapply()函数逐一处理列数据并创建数据框
df <- data.frame(lapply(csv_data, function(column_data) column_data))

# 打印新的数据框
print(df)
summary(df)
