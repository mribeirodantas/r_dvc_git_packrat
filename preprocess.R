input_file <- read.csv(file = 'data/simulation.tsv', sep='\t', stringsAsFactors=FALSE)
input_file <- input_file[, 1:50]
input_file <- lapply(input_file, function(x) replace(x, is.na(x), mean(x, na.rm = TRUE)))
input_file <- as.data.frame(input_file)

input_file[, unlist(lapply(input_file, is.numeric))] <- apply(input_file[, unlist(lapply(input_file, is.numeric))], 2, function(x) ifelse(x < 0, -1, x))

input_file[, unlist(lapply(input_file, is.numeric))] <- apply(input_file[, unlist(lapply(input_file, is.numeric))], 2, function(x) ifelse(x > 0, 1, x))

write.csv2(input_file, 'data/simulation_preprocessed.csv', row.names=FALSE)

