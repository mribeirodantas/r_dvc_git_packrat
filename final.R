input_file <- read.csv2(file = 'output_dir/all.edges.summary.csv')
input_file <- input_file[input_file$type == 'P', ]
write.csv2(input_file[, c('x', 'y')], 'output_dir/retained.edges.csv', row.names=FALSE)
