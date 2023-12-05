getwd()
setwd(E:/Homework/assignment_idaccuracy/Aminer)
getwd()
# 获取文件夹路径
folder_path <- E:/Homework/assignment_idaccuracy/Aminer

# 获取文件夹内所有 CSV 文件的文件名列表
csv_files <- list.files(folder_path, pattern = \.csv, full.names = TRUE)

# 创建一个空数据框用于存储合并后的数据
c_data <- data.frame()

# 循环读取并合并所有的CSV文件
for (file in csv_files) {
  # 读取CSV文件
  csv_data <- read.csv(file, header = TRUE, stringsAsFactors = FALSE, na.strings = , fill = TRUE)
  
  # 使用rbind逐步合并数据
  c_data <- rbind(c_data, csv_data)
}

# 打印合并后的数据框
print(c_data)

# 汇总合并后的数据
summary(c_data)
