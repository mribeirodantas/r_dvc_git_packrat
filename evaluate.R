input_file <- read.csv2(file = 'output_dir/retained.edges.csv')
write.table(nrow(input_file), 'output_dir/metric.txt', row.names=FALSE, col.names=FALSE)
