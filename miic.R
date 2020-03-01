input_file <- read.csv(file = 'data/simulation_preprocessed.csv', sep=';')

library(miic)
input_file <- as.data.frame(sapply(input_file, as.factor))
res <- miic(input_file, propagation = F)
if (!dir.exists('output_dir')) {
  dir.create('output_dir')
}
write.csv2(res$all.edges.summary, 'output_dir/all.edges.summary.csv',  row.names=FALSE)
