# =============================================================================
# VERDADECU - EJEMPLOS DE USO
# =============================================================================
# Este archivo contiene ejemplos completos de cómo usar el paquete verdadecu
# para análisis de datos de derechos humanos en Ecuador (1984-2008)
# =============================================================================

# Cargar el paquete
library(verdadecu)

# =============================================================================
# 1. EXPLORACIÓN INICIAL DE DATOS
# =============================================================================

cat("=== EXPLORACIÓN INICIAL DE DATOS ===\n")

# Ver todos los datos disponibles
cat("Datasets disponibles en verdadecu:\n")
data(package = "verdadecu")

# =============================================================================
# 2. ANÁLISIS DE VÍCTIMAS POR AÑO
# =============================================================================

cat("\n=== ANÁLISIS DE VÍCTIMAS POR AÑO ===\n")

# Cargar datos de víctimas por año
data(victimas_anio)

# Información básica
cat("Estructura de victimas_anio:\n")
str(victimas_anio)

cat("\nPrimeras filas:\n")
print(head(victimas_anio))

cat("\nResumen estadístico:\n")
print(summary(victimas_anio))

# Análisis temporal
cat("\nAño con más víctimas:\n")
max_victimas <- victimas_anio[which.max(victimas_anio$victima), ]
print(max_victimas)

cat("\nAño con menos víctimas:\n")
min_victimas <- victimas_anio[which.min(victimas_anio$victima), ]
print(min_victimas)

cat("\nTotal de víctimas en todo el período:", sum(victimas_anio$victima), "\n")
cat("Promedio de víctimas por año:", round(mean(victimas_anio$victima), 2), "\n")

# Gráfico temporal
if (require(graphics)) {
  plot(victimas_anio$anio, victimas_anio$victima, 
       type = "l", col = "red", lwd = 2,
       xlab = "Año", ylab = "Número de víctimas",
       main = "Víctimas de violaciones de derechos humanos por año (1984-2008)")
  grid()
}

# =============================================================================
# 3. ANÁLISIS GEOGRÁFICO - VÍCTIMAS POR PROVINCIA
# =============================================================================

cat("\n=== ANÁLISIS GEOGRÁFICO ===\n")

# Cargar datos de víctimas por provincia
data(victimas_provincia)

cat("Estructura de victimas_provincia:\n")
str(victimas_provincia)

cat("\nPrimeras filas:\n")
print(head(victimas_provincia))

# Top 10 provincias con más víctimas
cat("\nTop 10 provincias con más víctimas:\n")
top_10_provincias <- victimas_provincia[order(-victimas_provincia$victima), ][1:10, ]
print(top_10_provincias)

# Provincia con más víctimas
cat("\nProvincia con más víctimas:\n")
max_provincia <- victimas_provincia[which.max(victimas_provincia$victima), ]
print(max_provincia)

cat("\nNúmero de provincias afectadas:", nrow(victimas_provincia), "\n")
cat("Promedio de víctimas por provincia:", round(mean(victimas_provincia$victima), 2), "\n")

# Gráfico de provincias
if (require(graphics)) {
  top_10 <- victimas_provincia[order(-victimas_provincia$victima), ][1:10, ]
  barplot(top_10$victima, names.arg = top_10$provincia, 
          col = "darkred", las = 2,
          main = "Top 10 provincias con más víctimas",
          ylab = "Número de víctimas")
}

# =============================================================================
# 4. ANÁLISIS DE TIPOS DE VIOLACIONES
# =============================================================================

cat("\n=== ANÁLISIS DE TIPOS DE VIOLACIONES ===\n")

# Cargar datos de hechos por año
data(hechos_anio)

cat("Estructura de hechos_anio:\n")
str(hechos_anio)

cat("\nTipos de violaciones disponibles:\n")
tipos_violacion <- unique(hechos_anio$tipo_violacion)
print(tipos_violacion)

# Total de hechos por tipo de violación
cat("\nTotal de hechos por tipo de violación:\n")
total_por_tipo <- aggregate(hecho ~ tipo_violacion, data = hechos_anio, sum)
print(total_por_tipo)

# Tipo de violación más frecuente
cat("\nTipo de violación más frecuente:\n")
max_tipo <- total_por_tipo[which.max(total_por_tipo$hecho), ]
print(max_tipo)

# Gráfico de tipos de violación
if (require(graphics)) {
  barplot(total_por_tipo$hecho, names.arg = total_por_tipo$tipo_violacion,
          col = "orange", las = 2,
          main = "Total de hechos por tipo de violación",
          ylab = "Número de hechos")
}

# =============================================================================
# 5. ANÁLISIS POR SEXO
# =============================================================================

cat("\n=== ANÁLISIS POR SEXO ===\n")

# Cargar datos de víctimas por sexo
data(victimas_sexo)

cat("Estructura de victimas_sexo:\n")
str(victimas_sexo)

cat("\nDistribución por sexo:\n")
dist_sexo <- table(victimas_sexo$sexo)
print(dist_sexo)

# Total de víctimas por sexo
cat("\nTotal de víctimas por sexo:\n")
total_por_sexo <- aggregate(victima ~ sexo, data = victimas_sexo, sum)
print(total_por_sexo)

# Proporción por sexo
cat("\nProporción de víctimas por sexo:\n")
prop_sexo <- prop.table(table(victimas_sexo$sexo))
print(round(prop_sexo * 100, 2))

# Gráfico por sexo
if (require(graphics)) {
  barplot(total_por_sexo$victima, names.arg = total_por_sexo$sexo,
          col = c("lightblue", "pink"),
          main = "Total de víctimas por sexo",
          ylab = "Número de víctimas")
}

# =============================================================================
# 6. ANÁLISIS DE RESPONSABLES
# =============================================================================

cat("\n=== ANÁLISIS DE RESPONSABLES ===\n")

# Cargar datos de responsables
data(responsables)

cat("Estructura de responsables:\n")
str(responsables)

cat("\nPrimeras filas:\n")
print(head(responsables))

# Análisis de instituciones responsables
data(responsables_institucion)

cat("\nInstituciones responsables:\n")
inst_responsables <- table(responsables_institucion$institucion)
print(inst_responsables)

# Gráfico de instituciones
if (require(graphics)) {
  barplot(inst_responsables, col = "darkblue", las = 2,
          main = "Responsables por institución",
          ylab = "Número de casos")
}

# =============================================================================
# 7. ANÁLISIS DEMOGRÁFICO - EDAD
# =============================================================================

cat("\n=== ANÁLISIS DEMOGRÁFICO - EDAD ===\n")

# Cargar datos de víctimas por edad
data(victimas_edad)

cat("Estructura de victimas_edad:\n")
str(victimas_edad)

cat("\nDistribución por edad:\n")
dist_edad <- aggregate(victima ~ edad, data = victimas_edad, sum)
print(dist_edad)

# Grupo de edad más afectado
cat("\nGrupo de edad más afectado:\n")
max_edad <- dist_edad[which.max(dist_edad$victima), ]
print(max_edad)

# Gráfico de edad
if (require(graphics)) {
  barplot(dist_edad$victima, names.arg = dist_edad$edad,
          col = "lightgreen", las = 2,
          main = "Víctimas por grupo de edad",
          ylab = "Número de víctimas")
}

# =============================================================================
# 8. ANÁLISIS DE EDUCACIÓN
# =============================================================================

cat("\n=== ANÁLISIS DE EDUCACIÓN ===\n")

# Cargar datos de víctimas por educación
data(victimas_educacion)

cat("Estructura de victimas_educacion:\n")
str(victimas_educacion)

cat("\nDistribución por nivel educativo:\n")
dist_educacion <- aggregate(victima ~ educacion, data = victimas_educacion, sum)
print(dist_educacion)

# Nivel educativo más afectado
cat("\nNivel educativo más afectado:\n")
max_educacion <- dist_educacion[which.max(dist_educacion$victima), ]
print(max_educacion)

# =============================================================================
# 9. ANÁLISIS DE OCUPACIÓN
# =============================================================================

cat("\n=== ANÁLISIS DE OCUPACIÓN ===\n")

# Cargar datos de víctimas por ocupación
data(victimas_ocupacion)

cat("Estructura de victimas_ocupacion:\n")
str(victimas_ocupacion)

# Top 10 ocupaciones más afectadas
cat("\nTop 10 ocupaciones más afectadas:\n")
top_10_ocupaciones <- victimas_ocupacion[order(-victimas_ocupacion$victima), ][1:10, ]
print(top_10_ocupaciones)

# Gráfico de ocupaciones
if (require(graphics)) {
  barplot(top_10_ocupaciones$victima, names.arg = top_10_ocupaciones$ocupacion,
          col = "purple", las = 2,
          main = "Top 10 ocupaciones más afectadas",
          ylab = "Número de víctimas")
}

# =============================================================================
# 10. ANÁLISIS POR PERÍODO PRESIDENCIAL
# =============================================================================

cat("\n=== ANÁLISIS POR PERÍODO PRESIDENCIAL ===\n")

# Cargar datos de víctimas por presidente
data(victimas_presidente)

cat("Estructura de victimas_presidente:\n")
str(victimas_presidente)

cat("\nVíctimas por período presidencial:\n")
victimas_presidente_agg <- aggregate(victima ~ presidente, data = victimas_presidente, sum)
print(victimas_presidente_agg)

# Período con más víctimas
cat("\nPeríodo presidencial con más víctimas:\n")
max_presidente <- victimas_presidente_agg[which.max(victimas_presidente_agg$victima), ]
print(max_presidente)

# Gráfico por presidente
if (require(graphics)) {
  barplot(victimas_presidente_agg$victima, names.arg = victimas_presidente_agg$presidente,
          col = "gold", las = 2,
          main = "Víctimas por período presidencial",
          ylab = "Número de víctimas")
}

# =============================================================================
# 11. ANÁLISIS COMBINADO - EJEMPLO AVANZADO
# =============================================================================

cat("\n=== ANÁLISIS COMBINADO ===\n")

# Combinar datos de víctimas por año y sexo
cat("Análisis combinado: Víctimas por año y sexo\n")

# Crear análisis combinado
analisis_combinado <- merge(victimas_anio, victimas_sexo, by = "anio", all = TRUE)
cat("Estructura del análisis combinado:\n")
str(analisis_combinado)

cat("\nPrimeras filas del análisis combinado:\n")
print(head(analisis_combinado))

# Gráfico combinado
if (require(graphics) && require(lattice)) {
  xyplot(victima ~ anio | sexo, data = victimas_sexo,
         type = "l", col = "red", lwd = 2,
         xlab = "Año", ylab = "Número de víctimas",
         main = "Víctimas por sexo y año")
}

# =============================================================================
# 12. RESUMEN ESTADÍSTICO GENERAL
# =============================================================================

cat("\n=== RESUMEN ESTADÍSTICO GENERAL ===\n")

cat("Resumen de datos de direitos humanos en Ecuador (1984-2008):\n")
cat("- Total de víctimas:", sum(victimas_anio$victima), "\n")
cat("- Período analizado: 1984-2008 (25 años)\n")
cat("- Provincias afectadas:", nrow(victimas_provincia), "\n")
cat("- Tipos de violaciones documentadas:", length(unique(hechos_anio$tipo_violacion)), "\n")
cat("- Año con más víctimas:", max_victimas$anio, "(", max_victimas$victima, "víctimas)\n")
cat("- Provincia más afectada:", max_provincia$provincia, "(", max_provincia$victima, "víctimas)\n")
cat("- Tipo de violación más frecuente:", max_tipo$tipo_violacion, "(", max_tipo$hecho, "casos)\n")

cat("\n=== FIN DE EJEMPLOS ===\n")
cat("Para más información, consulte la documentación del paquete:\n")
cat("?verdadecu\n")
cat("help(package = 'verdadecu')\n") 