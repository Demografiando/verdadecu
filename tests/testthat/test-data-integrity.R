test_that("all datasets can be loaded", {
  expect_no_error(data(hechos_anio))
  expect_no_error(data(hechos_sexo))
  expect_no_error(data(hechos_victimas_anio))
  expect_no_error(data(hechos_victimas_rama))
  expect_no_error(data(responsables))
  expect_no_error(data(responsables_institucion))
  expect_no_error(data(victimas))
  expect_no_error(data(victimas_anio))
  expect_no_error(data(victimas_edad))
  expect_no_error(data(victimas_educacion))
  expect_no_error(data(victimas_lugar))
  expect_no_error(data(victimas_nacionalidad))
  expect_no_error(data(victimas_ocupacion))
  expect_no_error(data(victimas_presidente))
  expect_no_error(data(victimas_provincia))
  expect_no_error(data(victimas_sexo))
})

test_that("hechos_anio has expected structure", {
  data(hechos_anio)
  expect_s3_class(hechos_anio, "data.frame")
  expect_true("anio" %in% names(hechos_anio))
  expect_true("violacion" %in% names(hechos_anio))
  expect_true("hecho" %in% names(hechos_anio))
  expect_gt(nrow(hechos_anio), 0)
  expect_equal(ncol(hechos_anio), 3)
})

test_that("hechos_sexo has expected structure", {
  data(hechos_sexo)
  expect_s3_class(hechos_sexo, "data.frame")
  expect_true("sexo" %in% names(hechos_sexo))
  expect_true("hecho" %in% names(hechos_sexo))
  expect_gt(nrow(hechos_sexo), 0)
})

test_that("hechos_victimas_anio has expected structure", {
  data(hechos_victimas_anio)
  expect_s3_class(hechos_victimas_anio, "data.frame")
  expect_true("anio" %in% names(hechos_victimas_anio))
  expect_true("hecho" %in% names(hechos_victimas_anio))
  expect_true("victima" %in% names(hechos_victimas_anio))
  expect_gt(nrow(hechos_victimas_anio), 0)
})

test_that("hechos_victimas_rama has expected structure", {
  data(hechos_victimas_rama)
  expect_s3_class(hechos_victimas_rama, "data.frame")
  expect_true("rama" %in% names(hechos_victimas_rama))
  expect_true("hecho" %in% names(hechos_victimas_rama))
  expect_true("victima" %in% names(hechos_victimas_rama))
  expect_gt(nrow(hechos_victimas_rama), 0)
})

test_that("responsables has expected structure", {
  data(responsables)
  expect_s3_class(responsables, "data.frame")
  expect_gt(nrow(responsables), 0)
})

test_that("responsables_institucion has expected structure", {
  data(responsables_institucion)
  expect_s3_class(responsables_institucion, "data.frame")
  expect_true("institucion" %in% names(responsables_institucion))
  expect_true("responsables" %in% names(responsables_institucion))
  expect_gt(nrow(responsables_institucion), 0)
})

test_that("victimas has expected structure", {
  data(victimas)
  expect_s3_class(victimas, "data.frame")
  expect_true("victimas" %in% names(victimas))
  expect_equal(nrow(victimas), 456)
  expect_equal(ncol(victimas), 1)
})

test_that("victimas_anio has expected structure", {
  data(victimas_anio)
  expect_s3_class(victimas_anio, "data.frame")
  expect_true("anio" %in% names(victimas_anio))
  expect_true("victima" %in% names(victimas_anio))
  expect_gt(nrow(victimas_anio), 0)
})

test_that("victimas_edad has expected structure", {
  data(victimas_edad)
  expect_s3_class(victimas_edad, "data.frame")
  expect_true("edad" %in% names(victimas_edad))
  expect_true("victima" %in% names(victimas_edad))
  expect_gt(nrow(victimas_edad), 0)
})

test_that("victimas_educacion has expected structure", {
  data(victimas_educacion)
  expect_s3_class(victimas_educacion, "data.frame")
  expect_true("educacion" %in% names(victimas_educacion))
  expect_true("victima" %in% names(victimas_educacion))
  expect_gt(nrow(victimas_educacion), 0)
})

test_that("victimas_lugar has expected structure", {
  data(victimas_lugar)
  expect_s3_class(victimas_lugar, "data.frame")
  expect_true("lugar" %in% names(victimas_lugar))
  expect_true("victima" %in% names(victimas_lugar))
  expect_gt(nrow(victimas_lugar), 0)
})

test_that("victimas_nacionalidad has expected structure", {
  data(victimas_nacionalidad)
  expect_s3_class(victimas_nacionalidad, "data.frame")
  expect_true("nacionalidad" %in% names(victimas_nacionalidad))
  expect_true("victima" %in% names(victimas_nacionalidad))
  expect_gt(nrow(victimas_nacionalidad), 0)
})

test_that("victimas_ocupacion has expected structure", {
  data(victimas_ocupacion)
  expect_s3_class(victimas_ocupacion, "data.frame")
  expect_true("ocupacion" %in% names(victimas_ocupacion))
  expect_true("victima" %in% names(victimas_ocupacion))
  expect_gt(nrow(victimas_ocupacion), 0)
})

test_that("victimas_presidente has expected structure", {
  data(victimas_presidente)
  expect_s3_class(victimas_presidente, "data.frame")
  expect_true("presidente" %in% names(victimas_presidente))
  expect_true("victima" %in% names(victimas_presidente))
  expect_gt(nrow(victimas_presidente), 0)
})

test_that("victimas_provincia has expected structure", {
  data(victimas_provincia)
  expect_s3_class(victimas_provincia, "data.frame")
  expect_true("provincia" %in% names(victimas_provincia))
  expect_true("victima" %in% names(victimas_provincia))
  expect_gt(nrow(victimas_provincia), 0)
})

test_that("victimas_sexo has expected structure", {
  data(victimas_sexo)
  expect_s3_class(victimas_sexo, "data.frame")
  expect_true("sexo" %in% names(victimas_sexo))
  expect_true("victima" %in% names(victimas_sexo))
  expect_gt(nrow(victimas_sexo), 0)
})