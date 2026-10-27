#' Run fro Rstudio a function that convert a sparse matrix to a dense matrix
#' 
#' @param data_dir Path to a common folder between the host and the container where the output will be generated
#' @param input_name Path to a mtx file containing a sparse matrix
#' @param output_name Path to a CSV file containig a dense matrix
#' @return the number of rows and columns of the dense matrix
#' @examples
#' \dontrun{
#' runsparseToDense("data", "matrix.mtx", "dense_matrix.csv")
#' }
#' @importFrom Matrix readMM
#' @importFrom utils write.csv
#' @export
runSparseToDense <- function(data_dir, input_name, output_name) { 
  cmd <- sprintf("docker run --rm -v %s:/data dense_image %s %s", 
                 normalizePath(data_dir), 
                 file.path("/data", input_name), 
                 file.path("/data", output_name)) 
  system(cmd)
 }