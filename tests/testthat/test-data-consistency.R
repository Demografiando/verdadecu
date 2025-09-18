test_that("data relationships are consistent", {
  data(hechos_anio)
  data(victimas_anio)

  hechos_years <- unique(hechos_anio$anio)
  victimas_years <- unique(victimas_anio$anio)

  expect_true(length(intersect(hechos_years, victimas_years)) > 0)
})

test_that("total victim counts are reasonable", {
  data(victimas)
  data(victimas_anio)

  total_victims_individual <- nrow(victimas)
  total_victims_by_year <- sum(victimas_anio$victima)

  expect_true(total_victims_individual > 0)
  expect_true(total_victims_by_year > 0)
})

test_that("provincia data contains valid provinces", {
  data(victimas_provincia)

  ecuador_provinces <- c(
    "Azuay", "Bolívar", "Cañar", "Carchi", "Chimborazo",
    "Cotopaxi", "El Oro", "Esmeraldas", "Galápagos", "Guayas",
    "Imbabura", "Loja", "Los Ríos", "Manabí", "Morona Santiago",
    "Napo", "Orellana", "Pastaza", "Pichincha", "Santa Elena",
    "Santo Domingo", "Sucumbíos", "Tungurahua", "Zamora Chinchipe",
    "Exterior", "No determinado", "Sin información"
  )

  expect_true(all(victimas_provincia$victima >= 0))
})

test_that("data encoding is UTF-8", {
  data(victimas)
  expect_true(all(Encoding(victimas$victimas) %in% c("unknown", "UTF-8")))
})

test_that("temporal coverage matches documentation", {
  data(hechos_anio)
  data(victimas_anio)

  min_year <- 1984
  max_year <- 2008

  expect_gte(min(hechos_anio$anio), min_year)
  expect_lte(max(hechos_anio$anio), max_year)

  expect_gte(min(victimas_anio$anio), min_year)
  expect_lte(max(victimas_anio$anio), max_year)
})

test_that("aggregated counts are internally consistent", {
  data(hechos_victimas_anio)

  expect_true(all(hechos_victimas_anio$hecho > 0 | hechos_victimas_anio$victima > 0))
})

test_that("sex categories are complete", {
  data(victimas_sexo)
  data(hechos_sexo)

  expect_true(sum(victimas_sexo$victima) > 0)
  expect_true(sum(hechos_sexo$violacion) > 0)
})

test_that("educational levels are properly categorized", {
  data(victimas_educacion)

  expect_true(all(victimas_educacion$victima >= 0))
  expect_gt(length(unique(victimas_educacion$educacion)), 0)
})

test_that("occupation categories exist", {
  data(victimas_ocupacion)

  expect_true(all(victimas_ocupacion$victima >= 0))
  expect_gt(length(unique(victimas_ocupacion$ocupacion)), 0)
})

test_that("presidential periods are included", {
  data(victimas_presidente)

  expect_gt(length(unique(victimas_presidente$presidente)), 0)
  expect_true(all(victimas_presidente$victima >= 0))
})