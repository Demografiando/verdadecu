#' verdadecu: Datos de la Comision de la Verdad de Ecuador
#'
#' @description
#' El paquete \code{verdadecu} proporciona acceso a los datos recabados por la
#' Comisión de la Verdad de Ecuador. Permite extraer información sistematizada
#' para el análisis de derechos humanos en Ecuador.
#'
#' @details
#' Este paquete contiene datos sobre violaciones de derechos humanos en Ecuador
#' durante el período 1984-2008, incluyendo información sobre víctimas,
#' responsables, tipos de violaciones, ubicaciones geográficas y otros aspectos
#' relevantes para el análisis de derechos humanos.
#'
#' Los datos provienen del Informe de la Comisión de la Verdad Ecuador 2010:
#' "Sin Verdad No Hay Justicia".
#'
#' @examples
#' # Cargar el paquete
#' library(verdadecu)
#'
#' # Ver todos los datos disponibles
#' data(package = "verdadecu")
#'
#' # Cargar datos de víctimas por año
#' data(victimas_anio)
#' head(victimas_anio)
#'
#' # Análisis básico: Total de víctimas por año
#' total_por_anio <- aggregate(victima ~ anio, data = victimas_anio, sum)
#' head(total_por_anio)
#'
#' # Cargar datos de víctimas por provincia
#' data(victimas_provincia)
#' head(victimas_provincia)
#'
#' # Top 5 provincias con más víctimas
#' total_por_provincia <- aggregate(victima ~ provincia, data = victimas_provincia, sum)
#' top_5_provincias <- head(total_por_provincia[order(-total_por_provincia$victima), ], 5)
#' print(top_5_provincias)
#'
#' # Cargar datos de hechos por año
#' data(hechos_anio)
#' head(hechos_anio)
#'
#' # Análisis de tipos de violaciones
#' data(hechos_victimas_rama)
#' table(hechos_victimas_rama$tipo_violacion)
#'
#' # Cargar datos de víctimas por sexo
#' data(victimas_sexo)
#' head(victimas_sexo)
#'
#' # Análisis de distribución por sexo
#' total_por_sexo <- aggregate(victima ~ sexo, data = victimas_sexo, sum)
#' print(total_por_sexo)
#'
#' # Cargar datos de responsables
#' data(responsables)
#' head(responsables)
#'
#' # Análisis de instituciones responsables
#' data(responsables_institucion)
#' table(responsables_institucion$institucion)
#'
#' # Cargar datos de víctimas por edad
#' data(victimas_edad)
#' head(victimas_edad)
#'
#' # Análisis de distribución por edad
#' total_por_edad <- aggregate(victima ~ edad, data = victimas_edad, sum)
#' print(total_por_edad)
#'
#' # Cargar datos de víctimas por educación
#' data(victimas_educacion)
#' head(victimas_educacion)
#'
#' # Análisis de nivel educativo de víctimas
#' total_por_educacion <- aggregate(victima ~ educacion, data = victimas_educacion, sum)
#' print(total_por_educacion)
#'
#' # Cargar datos de víctimas por ocupación
#' data(victimas_ocupacion)
#' head(victimas_ocupacion)
#'
#' # Top 10 ocupaciones más afectadas
#' total_por_ocupacion <- aggregate(victima ~ ocupacion, data = victimas_ocupacion, sum)
#' top_10_ocupaciones <- head(total_por_ocupacion[order(-total_por_ocupacion$victima), ], 10)
#' print(top_10_ocupaciones)
#'
#' # Cargar datos de víctimas por nacionalidad
#' data(victimas_nacionalidad)
#' head(victimas_nacionalidad)
#'
#' # Análisis de nacionalidad de víctimas
#' total_por_nacionalidad <- aggregate(victima ~ nacionalidad, data = victimas_nacionalidad, sum)
#' print(total_por_nacionalidad)
#'
#' # Cargar datos de víctimas por presidente
#' data(victimas_presidente)
#' head(victimas_presidente)
#'
#' # Análisis por período presidencial
#' total_por_presidente <- aggregate(victima ~ presidente, data = victimas_presidente, sum)
#' print(total_por_presidente)
#'
#' # Cargar datos de víctimas por lugar
#' data(victimas_lugar)
#' head(victimas_lugar)
#'
#' # Análisis de lugares de violación
#' total_por_lugar <- aggregate(victima ~ lugar, data = victimas_lugar, sum)
#' print(total_por_lugar)
#'
#' # Ejemplo de análisis combinado: Víctimas por año y sexo
#' library(dplyr)
#' if (require(dplyr)) {
#'   # Combinar datos de víctimas por año y sexo
#'   data(victimas_anio)
#'   data(victimas_sexo)
#'   
#'   # Crear análisis combinado
#'   analisis_combinado <- merge(victimas_anio, victimas_sexo, by = "anio", all = TRUE)
#'   head(analisis_combinado)
#' }
#'
#' @source
#' Informe de la Comisión de la Verdad Ecuador 2010. Sin Verdad No Hay Justicia.
#' \url{https://demografiando.pro/informe-verdad/}
#'
#' @author
#' Adriana Robles \email{adriana@demografiando.pro}
#' Javier Borja \email{javier@demografiando.pro}
#'
#' @seealso
#' \url{https://github.com/Demografiando/verdadecu}
#'
#' @keywords internal
"_PACKAGE"