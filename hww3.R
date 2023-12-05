setwd(E:/Homework/assignment_idaccuracy/Aminer)
# 获取命令行参数
args <- commandArgs(trailingOnly = TRUE)

# 定义预期的文件路径
expected_path <- E:/Homework/assignment_idaccuracy/Aminer

# 检查是否有传递参数
if (length(args) > 0) {
  # 检查输入的文件路径是否匹配预期路径
  if (identical(args[1], expected_path)) {
    folder_path <- E:/Homework/assignment_idaccuracy/Aminer

    # 获取文件夹内所有 CSV 文件的文件名列表
    csv_files <- list.files(folder_path, pattern = \.csv, full.names = TRUE)

    # 使用lapply()读取文件并存储为数据框列表
    data_list <- lapply(csv_files, function(file) {
      read.csv(file, header = TRUE, stringsAsFactors = FALSE, na.strings = , fill = TRUE)
    })

    # 使用do.call()将数据框列表合并成一个大的数据框
    c_data <- do.call(rbind, data_list)

    
# 打印合并后的数据框
    print(c_data)

    # 汇总合并后的数据
    summary(c_data)

  } else {
    print(请输入正确的文件路径。)
  }
} else {
  print(请输入文件路径作为参数。)
}
