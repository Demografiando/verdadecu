#' victimas_edad
#'
#' @description Datos que contienen el número de víctimas de violaciones de derechos humanos en Ecuador por grupo de edad.
#' @usage data(victimas_edad)
#' @source Informe de la Comisión de la Verdad Ecuador 2010. Sin Verdad No Hay Justicia.
#' Tomo 1: Violaciones de los Derechos Humanos.
#' \url{https://demografiando.pro/informe-verdad/}
#' @format Un data frame con múltiples filas y 2 variables.
#' \describe{
#' \item{edad}{Grupo de edad de las víctimas.}
#' \item{victima}{Número total de víctimas en ese grupo de edad.}
#' }
#' @examples
#' # Cargar los datos
#' data(victimas_edad)
#' 
#' # Ver las primeras filas
#' head(victimas_edad)
#' 
#' # Ver la estructura de los datos
#' str(victimas_edad)
#' 
#' # Resumen estadístico
#' summary(victimas_edad)
#' 
#' # Distribución por edad
#' table(victimas_edad$edad)
#' 
#' # Total de víctimas por grupo de edad
#' total_por_edad <- aggregate(victima ~ edad, data = victimas_edad, sum)
#' print(total_por_edad)
#' 
#' # Grupo de edad más afectado
#' max_edad <- total_por_edad[which.max(total_por_edad$victima), ]
#' print(max_edad)
#' 
#' # Grupo de edad menos afectado
#' min_edad <- total_por_edad[which.min(total_por_edad$victima), ]
#' print(min_edad)
#' 
#' # Total de víctimas
#' sum(victimas_edad$victima)
#' 
#' # Promedio de víctimas por grupo de edad
#' mean(victimas_edad$victima)
#' 
#' # Gráfico de barras por edad
#' barplot(total_por_edad$victima, names.arg = total_por_edad$edad,
#'         col = "lightgreen", las = 2,
#'         main = "Víctimas por grupo de edad",
#'         ylab = "Número de víctimas")
"victimas_edad"
