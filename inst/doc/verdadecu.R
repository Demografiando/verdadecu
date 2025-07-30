## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
# Cargar el paquete
library(verdadecu)

## -----------------------------------------------------------------------------
# Ver todos los datos disponibles
data(package = "verdadecu")

## -----------------------------------------------------------------------------
# Cargar datos de víctimas por año
data(victimas_anio)
head(victimas_anio)

## -----------------------------------------------------------------------------
# Cargar datos de víctimas por provincia
data(victimas_provincia)
head(victimas_provincia)

## -----------------------------------------------------------------------------
# Cargar datos de hechos por año
data(hechos_anio)
head(hechos_anio)

## -----------------------------------------------------------------------------
# Cargar datos de víctimas por sexo
data(victimas_sexo)
head(victimas_sexo)

## -----------------------------------------------------------------------------
# Calcular total de víctimas por año
total_por_anio <- aggregate(victima ~ anio, data = victimas_anio, sum)
head(total_por_anio)

## -----------------------------------------------------------------------------
# Calcular total de víctimas por provincia
total_por_provincia <- aggregate(victima ~ provincia, data = victimas_provincia, sum)
top_5_provincias <- head(total_por_provincia[order(-total_por_provincia$victima), ], 5)
top_5_provincias

