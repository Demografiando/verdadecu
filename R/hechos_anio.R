#' hechos_anio
#'
#' @description Datos que contienen el número de hechos de violaciones de derechos humanos en Ecuador por año.
#' @usage data(hechos_anio)
#' @source Informe de la Comisión de la Verdad Ecuador 2010. Sin Verdad No Hay Justicia.
#' Tomo 1: Violaciones de los Derechos Humanos.
#' \url{https://demografiando.pro/informe-verdad/}
#' @format Un data frame con múltiples filas y 3 variables.
#' \describe{
#' \item{anio}{Año en el que ocurrieron las violaciones de derechos humanos.}
#' \item{tipo_violacion}{Tipo de violación de derechos humanos.}
#' \item{hecho}{Número de hechos de ese tipo de violación en ese año.}
#' }
#' @examples
#' # Cargar los datos
#' data(hechos_anio)
#' 
#' # Ver las primeras filas
#' head(hechos_anio)
#' 
#' # Ver la estructura de los datos
#' str(hechos_anio)
#' 
#' # Resumen estadístico
#' summary(hechos_anio)
#' 
#' # Tipos de violaciones disponibles
#' unique(hechos_anio$tipo_violacion)
#' 
#' # Total de hechos por tipo de violación
#' aggregate(hecho ~ tipo_violacion, data = hechos_anio, sum)
#' 
#' # Total de hechos por año
#' total_por_anio <- aggregate(hecho ~ anio, data = hechos_anio, sum)
#' head(total_por_anio)
#' 
#' # Año con más hechos
#' total_por_anio[which.max(total_por_anio$hecho), ]
#' 
#' # Tipo de violación más frecuente
#' total_por_tipo <- aggregate(hecho ~ tipo_violacion, data = hechos_anio, sum)
#' total_por_tipo[which.max(total_por_tipo$hecho), ]
#' 
#' # Gráfico de hechos por año
#' plot(total_por_anio$anio, total_por_anio$hecho, 
#'      type = "l", col = "blue", lwd = 2,
#'      xlab = "Año", ylab = "Número de hechos",
#'      main = "Hechos de violaciones de derechos humanos por año")
#' 
#' # Gráfico de barras por tipo de violación
#' barplot(total_por_tipo$hecho, names.arg = total_por_tipo$tipo_violacion,
#'         col = "orange", las = 2,
#'         main = "Total de hechos por tipo de violación",
#'         ylab = "Número de hechos")
"hechos_anio"
