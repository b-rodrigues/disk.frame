context("test-merge.disk.frame")

setup({
  b = data.frame(a = 51:150, b = 1:100)
  d = data.frame(a = 151:250, b = 1:100)
  as.disk.frame(b, "tmp_merge.df", nchunks = 5, overwrite = T)
  as.disk.frame(d, "tmp_merge2.df", nchunks = 5, overwrite = T)
})

test_that("testing merge of disk.frame", {
  b.df = disk.frame("tmp_merge.df")
  d.df = disk.frame("tmp_merge2.df")
  
  bd.df = merge(b.df, d.df, by = "b", outdir = "tmp_bd_merge.df", overwrite = T)
  
  expect_s3_class(bd.df, "disk.frame")
  expect_equal(nrow(bd.df), 100)
})

test_that("testing merge of data.frame", {
  b.df = disk.frame("tmp_merge.df")
  d = data.frame(a = 151:250, b = 1:100)

  bd.df = merge(b.df, d, by = "b", outdir = "tmp_bd_merge2.df", overwrite = T)

  expect_s3_class(bd.df, "disk.frame")
  expect_equal(nrow(bd.df), 100)

  tmp  = collect(bd.df)

  expect_s3_class(tmp, "data.frame")
  expect_equal(nrow(tmp), 100)
})



teardown({
  fs::dir_delete("tmp_merge.df")
  fs::dir_delete("tmp_merge2.df")
  fs::dir_delete("tmp_bd_merge.df")
  fs::dir_delete("tmp_bd_merge2.df")
})