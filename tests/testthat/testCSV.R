context("Setup and teardown")

tmp <- tempfile()
df <- data.frame(Column1 = c(1,2,3),
                 Column2 = c(3,2,2))

# Creación de un archivo temporal
setup(write.csv(df, tmp))

# Borrado del archivo
teardown(unlink(tmp))

test_that("Setup and teardown", {
  file.df <- read.csv(tmp)

  expect_equal(file.df$Column1, df$Column1)
  expect_equal(file.df$Column2, df$Column2)
})
