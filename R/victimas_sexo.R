#' victimas_sexo
#'
#' @description Datos que contienen el número de víctimas de violaciones de derechos humanos en Ecuador por sexo.
#' @usage data(victimas_sexo)
#' @source Informe de la Comisión de la Verdad Ecuador 2010. Sin Verdad No Hay Justicia.
#' Tomo 1: Violaciones de los Derechos Humanos.
#' \url{https://demografiando.pro/informe-verdad/}
#' @format Un data frame con múltiples filas y 3 variables.
#' \describe{
#' \item{anio}{Año en el que ocurrieron las violaciones de derechos humanos.}
#' \item{sexo}{Sexo de las víctimas (Masculino/Femenino).}
#' \item{victima}{Número total de víctimas de ese sexo en ese año.}
#' }
#' @examples
#' # Cargar los datos
#' data(victimas_sexo)
#' 
#' # Ver las primeras filas
#' head(victimas_sexo)
#' 
#' # Ver la estructura de los datos
#' str(victimas_sexo)
#' 
#' # Resumen estadístico
#' summary(victimas_sexo)
#' 
#' # Distribución por sexo
#' table(victimas_sexo$sexo)
#' 
#' # Total de víctimas por sexo
#' aggregate(victima ~ sexo, data = victimas_sexo, sum)
#' 
#' # Total de víctimas por año
#' total_por_anio <- aggregate(victima ~ anio, data = victimas_sexo, sum)
#' head(total_por_anio)
#' 
#' # Año con más víctimas
#' total_por_anio[which.max(total_por_anio$victima), ]
#' 
#' # Sexo más afectado
#' total_por_sexo <- aggregate(victima ~ sexo, data = victimas_sexo, sum)
#' total_por_sexo[which.max(total_por_sexo$victima), ]
#' 
#' # Proporción de víctimas por sexo
#' prop.table(table(victimas_sexo$sexo))
#' 
#' # Gráfico de víctimas por sexo y año
#' library(lattice)
#' if (require(lattice)) {
#'   xyplot(victima ~ anio | sexo, data = victimas_sexo,
#'          type = "l", col = "red", lwd = 2,
#'          xlab = "Año", ylab = "Número de víctimas",
#'          main = "Víctimas por sexo y año")
#' }
#' 
#' # Gráfico de barras por sexo
#' barplot(total_por_sexo$victima, names.arg = total_por_sexo$sexo,
#'         col = c("lightblue", "pink"),
#'         main = "Total de víctimas por sexo",
#'         ylab = "Número de víctimas")
"victimas_sexo"
