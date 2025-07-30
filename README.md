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

## Ejemplos

### Ejemplos Básicos

El paquete incluye ejemplos detallados en la documentación de cada dataset:

```r
# Ver ejemplos para victimas_anio
?victimas_anio

# Ver ejemplos para victimas_provincia
?victimas_provincia

# Ver ejemplos para hechos_anio
?hechos_anio
```

### Ejemplos Avanzados

Para ejemplos completos y análisis detallados, ejecute el archivo de ejemplos:

```r
# Ejecutar ejemplos completos
source(system.file("examples", "verdadecu_examples.R", package = "verdadecu"))
```

O copie y ejecute el contenido del archivo `examples/verdadecu_examples.R` que incluye:

- **Exploración inicial de datos**
- **Análisis temporal** (víctimas por año)
- **Análisis geográfico** (víctimas por provincia)
- **Análisis de tipos de violaciones**
- **Análisis demográfico** (edad, sexo, educación)
- **Análisis de responsables**
- **Análisis por período presidencial**
- **Análisis combinado** (ejemplos avanzados)

### Análisis Rápido

```r
# Análisis básico de víctimas por año
data(victimas_anio)
plot(victimas_anio$anio, victimas_anio$victima,
     type = "l", col = "red", lwd = 2,
     xlab = "Año", ylab = "Número de víctimas",
     main = "Víctimas por año (1984-2008)")

# Top 5 provincias con más víctimas
data(victimas_provincia)
top_5 <- victimas_provincia[order(-victimas_provincia$victima), ][1:5, ]
barplot(top_5$victima, names.arg = top_5$provincia,
        col = "darkred", las = 2,
        main = "Top 5 provincias con más víctimas")
```

## Datasets Incluidos

El paquete contiene los siguientes datasets:

### Datos de Víctimas

- `victimas_anio` - Víctimas por año (1984-2008)
- `victimas_provincia` - Víctimas por provincia
- `victimas_sexo` - Víctimas por sexo
- `victimas_edad` - Víctimas por grupo de edad
- `victimas_educacion` - Víctimas por nivel educativo
- `victimas_ocupacion` - Víctimas por ocupación
- `victimas_nacionalidad` - Víctimas por nacionalidad
- `victimas_lugar` - Víctimas por lugar de violación
- `victimas_presidente` - Víctimas por período presidencial

### Datos de Hechos

- `hechos_anio` - Hechos por año y tipo de violación
- `hechos_sexo` - Hechos por sexo
- `hechos_victimas_anio` - Hechos y víctimas por año
- `hechos_victimas_rama` - Hechos y víctimas por rama

### Datos de Responsables

- `responsables` - Información de responsables
- `responsables_institucion` - Responsables por institución

## Codificación de Caracteres

**Importante**: Este paquete contiene datos en español con caracteres no-ASCII (acentos, ñ, etc.). Esto es **necesario y esperado** porque:

- Los datos contienen nombres, lugares y términos en español
- Son registros reales de violaciones de derechos humanos de Ecuador
- Todos los archivos están guardados con codificación UTF-8
- El archivo DESCRIPTION incluye `Encoding: UTF-8`
- Los caracteres no-ASCII son esenciales para la representación precisa de los datos originales

Los warnings sobre caracteres no-ASCII durante la instalación o verificación del paquete son **normales y esperados**.

## Documentación

Para más información:

```r
# Documentación del paquete
?verdadecu
help(package = "verdadecu")

# Lista completa de datasets
data(package = "verdadecu")

# Documentación de datasets específicos
?victimas_anio
?victimas_provincia
?hechos_anio
```

## Fuente de Datos

Los datos provienen del **Informe de la Comisión de la Verdad Ecuador 2010**: "Sin Verdad No Hay Justicia".

- **Período**: 1984-2008
- **Fuente**: [https://demografiando.pro/informe-verdad/](https://demografiando.pro/informe-verdad/)
- **Tomo 1**: Violaciones de los Derechos Humanos

## Contribuir

Para contribuir al desarrollo del paquete:

1. Fork el repositorio en GitHub
2. Cree una rama para su feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit sus cambios (`git commit -am 'Agregar nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Cree un Pull Request

## Licencia

Este paquete está bajo la licencia GPL (>= 2). Ver el archivo LICENSE para más detalles.

## Autores

- **Adriana Robles** - [adriana@demografiando.pro](mailto:adriana@demografiando.pro)
- **Javier Borja** - [javier@demografiando.pro](mailto:javier@demografiando.pro)

## Enlaces

- **GitHub**: [https://github.com/Demografiando/verdadecu](https://github.com/Demografiando/verdadecu)
- **Sitio web**: [https://demografiando.pro](https://demografiando.pro)
- **Informe de la Verdad**: [https://demografiando.pro/informe-verdad/](https://demografiando.pro/informe-verdad/)
