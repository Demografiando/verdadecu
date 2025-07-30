#' victimas_anio
#'
#' @description Datos que contienen el número de víctimas de violaciones de derechos humanos en Ecuador por año.
#' @usage data(victimas_anio)
#' @source Informe de la Comisión de la Verdad Ecuador 2010. Sin Verdad No Hay Justicia.
#' Tomo 1: Violaciones de los Derechos Humanos.
#' \url{https://demografiando.pro/informe-verdad/}
#' @format Un data frame con 25 filas y 2 variables.
#' \describe{
#' \item{anio}{Año en el que las violaciones de los derechos humanos ocurrieron. }
#' \item{victima}{Número total de víctimas.}
#' }
#' @examples
#' # Cargar los datos
#' data(victimas_anio)
#' 
#' # Ver las primeras filas
#' head(victimas_anio)
#' 
#' # Ver la estructura de los datos
#' str(victimas_anio)
#' 
#' # Resumen estadístico
#' summary(victimas_anio)
#' 
#' # Año con más víctimas
#' victimas_anio[which.max(victimas_anio$victima), ]
#' 
#' # Año con menos víctimas
#' victimas_anio[which.min(victimas_anio$victima), ]
#' 
#' # Total de víctimas en todo el período
#' sum(victimas_anio$victima)
#' 
#' # Promedio de víctimas por año
#' mean(victimas_anio$victima)
#' 
#' # Gráfico básico de víctimas por año
#' plot(victimas_anio$anio, victimas_anio$victima, 
#'      type = "l", col = "red", lwd = 2,
#'      xlab = "Año", ylab = "Número de víctimas",
#'      main = "Víctimas de violaciones de derechos humanos por año")
"victimas_anio"
