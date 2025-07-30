#' responsables
#'
#' @description Datos que contienen información sobre los responsables de violaciones de derechos humanos en Ecuador.
#' @usage data(responsables)
#' @source Informe de la Comisión de la Verdad Ecuador 2010. Sin Verdad No Hay Justicia.
#' Tomo 1: Violaciones de los Derechos Humanos.
#' \url{https://demografiando.pro/informe-verdad/}
#' @format Un data frame con múltiples filas y variables.
#' \describe{
#' \item{responsable}{Nombre del responsable de la violación de derechos humanos.}
#' \item{otros_campos}{Otros campos relacionados con el responsable.}
#' }
#' @examples
#' # Cargar los datos
#' data(responsables)
#' 
#' # Ver las primeras filas
#' head(responsables)
#' 
#' # Ver la estructura de los datos
#' str(responsables)
#' 
#' # Resumen estadístico
#' summary(responsables)
#' 
#' # Número total de responsables
#' nrow(responsables)
#' 
#' # Ver algunos nombres de responsables
#' head(responsables$responsable, 10)
#' 
#' # Buscar responsables específicos (ejemplo)
#' # grep("García", responsables$responsable, value = TRUE)
#' 
#' # Análisis de frecuencia de nombres
#' # table(responsables$responsable)
"responsables"
