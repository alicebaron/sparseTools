# sparseTools

## Installation
devtools::install_github("alicebaron/sparseTools")


## Building the Docker image
docker build -t dense_image .

## Example
Rscript -e 'library(sparseTools); runsparseToDense("data", "matrix.mtx", "dense_matrix.csv")

