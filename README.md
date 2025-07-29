# verdadecu: Datos de la Comisión de la Verdad de Ecuador

## Descripción

El paquete `verdadecu` proporciona acceso a los datos recabados por la Comisión de la Verdad de Ecuador. Permite extraer información sistematizada para el análisis de derechos humanos en Ecuador.

## Instalación

```r
# Instalar desde CRAN (cuando esté disponible)
install.packages("verdadecu")

# Instalar desde GitHub
if (!require("devtools")) install.packages("devtools")
devtools::install_github("Demografiando/verdadecu")
```

## Uso

```r
library(verdadecu)

# Ver los datos disponibles
data(package = "verdadecu")

# Cargar datos de víctimas por año
data(victimas_anio)
head(victimas_anio)

# Cargar datos de víctimas por provincia
data(victimas_provincia)
head(victimas_provincia)
```

## Datos incluidos

El paquete incluye los siguientes conjuntos de datos:

- `hechos_anio`: Hechos por año
- `hechos_sexo`: Hechos por sexo
- `hechos_victimas_anio`: Hechos y víctimas por año
- `hechos_victimas_rama`: Hechos y víctimas por rama
- `responsables`: Datos de responsables
- `responsables_institucion`: Responsables por institución
- `victimas`: Datos generales de víctimas
- `victimas_anio`: Víctimas por año
- `victimas_edad`: Víctimas por edad
- `victimas_educacion`: Víctimas por educación
- `victimas_lugar`: Víctimas por lugar
- `victimas_nacionalidad`: Víctimas por nacionalidad
- `victimas_ocupacion`: Víctimas por ocupación
- `victimas_presidente`: Víctimas por presidente
- `victimas_provincia`: Víctimas por provincia
- `victimas_sexo`: Víctimas por sexo

## Licencia

Este paquete está licenciado bajo GPL (>= 2).

## Reportar problemas

Si encuentras algún problema o tienes sugerencias, por favor reporta un issue en [GitHub](https://github.com/Demografiando/verdadecu/issues).

## Autores

- Adriana Robles (adriana@demografiando.pro)
- Javier Borja (javier@demografiando.pro)
