library(purrr)
library(vroom)
library(arrow)

outdir <- fs::dir_create("brick/")

save_parquet <- function(file) {
	print(file)
	is_fa = grepl(file, pattern = "*.fa.gz$")
	path <- fs::path_ext_remove(file) |> fs::path_ext_set("parquet") |> fs::path_file()
	if(is_fa)
		file.copy(from=file, to=paste0(outdir, "/", basename(file)))
	else {
		df <- vroom::vroom(file)
		arrow::write_parquet(df,fs::path(outdir,path))
	}
}

# WRITE OUTS ================================================================================
fs::dir_ls(outdir) |> fs::file_delete() # delete files present in the directory
fs::dir_ls("cache") |> walk(save_parquet) # convert files to parquet