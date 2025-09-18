test_that("hechos_anio contains valid years", {
  data(hechos_anio)
  expect_true(all(hechos_anio$anio >= 1984))
  expect_true(all(hechos_anio$anio <= 2008))
})

test_that("hechos_anio contains valid counts", {
  data(hechos_anio)
  expect_true(all(hechos_anio$hecho >= 0))
})

test_that("hechos_sexo contains valid sex categories", {
  data(hechos_sexo)
  valid_sexo <- c("mujer", "hombre", "Masculino", "Femenino", "No determinado", "Sin información")
  expect_true(all(hechos_sexo$sexo %in% valid_sexo))
})

test_that("victimas_anio contains valid years", {
  data(victimas_anio)
  expect_true(all(victimas_anio$anio >= 1984))
  expect_true(all(victimas_anio$anio <= 2008))
})

test_that("victimas_edad contains valid age groups", {
  data(victimas_edad)
  expect_true(all(victimas_edad$victima >= 0))
})

test_that("all victim counts are non-negative", {
  data(victimas_anio)
  data(victimas_edad)
  data(victimas_educacion)
  data(victimas_lugar)
  data(victimas_nacionalidad)
  data(victimas_ocupacion)
  data(victimas_presidente)
  data(victimas_provincia)
  data(victimas_sexo)

  expect_true(all(victimas_anio$victima >= 0))
  expect_true(all(victimas_edad$victima >= 0))
  expect_true(all(victimas_educacion$victima >= 0))
  expect_true(all(victimas_lugar$victima >= 0))
  expect_true(all(victimas_nacionalidad$victima >= 0))
  expect_true(all(victimas_ocupacion$victima >= 0))
  expect_true(all(victimas_presidente$victima >= 0))
  expect_true(all(victimas_provincia$victima >= 0))
  expect_true(all(victimas_sexo$victima >= 0))
})

test_that("responsables_institucion contains valid counts", {
  data(responsables_institucion)
  expect_true(all(responsables_institucion$responsables >= 0))
})

test_that("hechos_victimas_anio has consistent data", {
  data(hechos_victimas_anio)
  expect_true(all(hechos_victimas_anio$hecho >= 0))
  expect_true(all(hechos_victimas_anio$victima >= 0))
  expect_true(all(hechos_victimas_anio$anio >= 1984))
  expect_true(all(hechos_victimas_anio$anio <= 2008))
})

test_that("hechos_victimas_rama has consistent data", {
  data(hechos_victimas_rama)
  expect_true(all(hechos_victimas_rama$victima >= 0, na.rm = TRUE))
})

test_that("no missing values in critical columns", {
  data(hechos_anio)
  expect_false(any(is.na(hechos_anio$anio)))
  expect_false(any(is.na(hechos_anio$hecho)))

  data(victimas_anio)
  expect_false(any(is.na(victimas_anio$anio)))
  expect_false(any(is.na(victimas_anio$victima)))

  data(victimas_sexo)
  expect_false(any(is.na(victimas_sexo$sexo)))
  expect_false(any(is.na(victimas_sexo$victima)))
})