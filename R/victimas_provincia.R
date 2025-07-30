#' victimas_provincia
#'
#' @description Datos que contienen el número de víctimas de violaciones de derechos humanos en Ecuador por provincia.
#' @usage data(victimas_provincia)
#' @source Informe de la Comisión de la Verdad Ecuador 2010. Sin Verdad No Hay Justicia.
#' Tomo 1: Violaciones de los Derechos Humanos.
#' \url{https://demografiando.pro/informe-verdad/}
#' @format Un data frame con múltiples filas y 2 variables.
#' \describe{
#' \item{provincia}{Nombre de la provincia donde ocurrieron las violaciones.}
#' \item{victima}{Número total de víctimas en esa provincia.}
#' }
#' @examples
#' # Cargar los datos
#' data(victimas_provincia)
#' 
#' # Ver las primeras filas
#' head(victimas_provincia)
#' 
#' # Ver la estructura de los datos
#' str(victimas_provincia)
#' 
#' # Resumen estadístico
#' summary(victimas_provincia)
#' 
#' # Provincia con más víctimas
#' victimas_provincia[which.max(victimas_provincia$victima), ]
#' 
#' # Top 5 provincias con más víctimas
#' top_5 <- victimas_provincia[order(-victimas_provincia$victima), ][1:5, ]
#' print(top_5)
#' 
#' # Total de víctimas en todo el país
#' sum(victimas_provincia$victima)
#' 
#' # Número de provincias afectadas
#' nrow(victimas_provincia)
#' 
#' # Promedio de víctimas por provincia
#' mean(victimas_provincia$victima)
#' 
#' # Gráfico de barras de las 10 provincias con más víctimas
#' top_10 <- victimas_provincia[order(-victimas_provincia$victima), ][1:10, ]
#' barplot(top_10$victima, names.arg = top_10$provincia, 
#'         col = "darkred", las = 2,
#'         main = "Top 10 provincias con más víctimas",
#'         ylab = "Número de víctimas")
"victimas_provincia"
