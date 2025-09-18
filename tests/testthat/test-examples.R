test_that("hechos_anio examples work", {
  data(hechos_anio)

  expect_no_error(head(hechos_anio))

  expect_no_error(str(hechos_anio))

  expect_no_error(summary(hechos_anio))

  tipos <- unique(hechos_anio$hecho)
  expect_gt(length(tipos), 0)

  total_anio <- aggregate(violacion ~ anio, data = hechos_anio, sum, na.rm = TRUE)
  expect_s3_class(total_anio, "data.frame")
  expect_true("violacion" %in% names(total_anio))
  expect_true("anio" %in% names(total_anio))

  max_year <- total_anio[which.max(total_anio$violacion), ]
  expect_equal(nrow(max_year), 1)
  expect_true("anio" %in% names(max_year))
})

test_that("aggregate functions work with all datasets", {
  data(victimas_anio)
  result <- aggregate(victima ~ anio, data = victimas_anio, sum)
  expect_s3_class(result, "data.frame")
  expect_gt(nrow(result), 0)

  data(victimas_sexo)
  result <- aggregate(victima ~ sexo, data = victimas_sexo, sum)
  expect_s3_class(result, "data.frame")
  expect_gt(nrow(result), 0)

  data(victimas_provincia)
  result <- aggregate(victima ~ provincia, data = victimas_provincia, sum)
  expect_s3_class(result, "data.frame")
  expect_gt(nrow(result), 0)
})

test_that("data can be subsetted", {
  data(hechos_anio)

  subset_1990s <- hechos_anio[hechos_anio$anio >= 1990 & hechos_anio$anio < 2000, ]
  expect_s3_class(subset_1990s, "data.frame")
  expect_true(all(subset_1990s$anio >= 1990))
  expect_true(all(subset_1990s$anio < 2000))

  data(victimas_edad)
  if(nrow(victimas_edad) > 0) {
    first_age_group <- victimas_edad[1, ]
    expect_equal(nrow(first_age_group), 1)
  }
})

test_that("data can be merged", {
  data(victimas_anio)
  data(hechos_victimas_anio)

  if("anio" %in% names(victimas_anio) & "anio" %in% names(hechos_victimas_anio)) {
    merged <- merge(victimas_anio, hechos_victimas_anio,
                    by = "anio", all = FALSE)
    expect_s3_class(merged, "data.frame")
  }
})

test_that("statistical summaries work", {
  data(hechos_anio)

  mean_violacion <- mean(hechos_anio$violacion, na.rm = TRUE)
  expect_true(is.numeric(mean_violacion))
  expect_true(mean_violacion >= 0)

  median_violacion <- median(hechos_anio$violacion, na.rm = TRUE)
  expect_true(is.numeric(median_violacion))
  expect_true(median_violacion >= 0)

  sd_violacion <- sd(hechos_anio$violacion, na.rm = TRUE)
  expect_true(is.numeric(sd_violacion))
  expect_true(sd_violacion >= 0)
})