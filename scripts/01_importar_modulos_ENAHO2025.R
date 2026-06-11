#===================================================================================
#Proyecto: Proyecto Informalidad Taller de datos
#Script: Carga y unión de módulos
#Propósito: Cargar y unir los módulos de a ENAHO que utilizaremos para el trabajo
#Autor: Guillermo Coronado
#Fecha: 12/06/2026
#===================================================================================

#1.Librerías----------------
library(rio)
library(tidyverse)
library(readr)
library(janitor)
renv::snapshot()

#2.Importar---------------

#Datos2025
hogar2025 <- import("datos/crudos/Enaho01-2025-100.csv")
carac2025 <- import("datos/crudos/Enaho01-2025-200.csv")
salud2025 <- import("datos/crudos/Enaho01-2025-300.csv")
educacion2025 <- import("datos/crudos/Enaho01-2025-400.csv")
empleo2025 <- import("datos/crudos/Enaho01-2025-500.csv")
confianza2025- import("datos/crudos/Enaho01B-2025-1.csv") 



