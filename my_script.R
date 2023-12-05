# 获取命令行参数
args <- commandArgs(trailingOnly = TRUE)

# 定义预期的文件路径
expected_path <- "E:/数据分析/1_1Yuanbo Zhang_aminer.cnprofileyuanbo-zhang542a4624dabfae864af93d5f.csv"

# 检查是否有传递参数
if (length(args) > 0) {
  # 检查输入的文件路径是否匹配预期路径
  if (identical(args[1], expected_path)) {
    # 读取数据
    csv_data <- read.csv(args[1], header = TRUE, stringsAsFactors = FALSE, na.strings = "", fill = TRUE)
    
    # 使用lapply()函数逐一处理列数据并创建数据框
    df <- data.frame(lapply(csv_data, function(column_data) column_data))
    
    # 打印新的数据框
    print(df)
    
    # 输出数据摘要
    summary(df)
  } else {
    print("请输入正确的文件路径。")
  }
} else {
  print("请输入文件路径作为参数。")
}

