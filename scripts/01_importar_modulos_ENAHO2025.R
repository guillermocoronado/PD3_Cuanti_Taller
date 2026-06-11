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

#2025
mod300 <- import("datos/crudos/enaho01a-2025-300.csv", colClasses = "character", encoding = "Latin-1")
mod400 <- import("datos/crudos/enaho01a-2025-400.csv", colClasses = "character", encoding = "Latin-1")
mod500 <- import("datos/crudos/enaho01a-2025-500.csv", colClasses = "character", encoding = "Latin-1")
mod_gob <- import("datos/crudos/Enaho01B-2025-1.csv", colClasses = "character", encoding = "Latin-1")

keys_hogar <- c("AÑO", "MES", "CONGLOME", "VIVIENDA", "HOGAR", 
                "UBIGEO", "DOMINIO", "ESTRATO", "NCONGLOME", "SUB_CONGLOME") #Definimos keys para el merge

keys_persona <- c(keys_hogar, "CODPERSO", "CODINFOR", "P203", "P204", "P205", "P206",
                  "P207", "P208A", "P209")

enaho_2025 <- mod400 %>% #Hacemos el merge para los primeros tres módulos
  left_join(mod300, by = keys_persona) %>%
  left_join(mod500, by = keys_persona)

keys_gob <- c(keys_hogar, "CODPERSO", "CODINFOR") #Definimos las keys para el último merge porque tiene nombres distintos

enaho_2025 <- enaho_2025 %>% 
  left_join(mod_gob, by = keys_gob)

#3.Exportar-------------------
library(arrow)
renv::snapshot()
write_parquet(enaho_2025, "datos/limpios/enaho_2025.parquet")
renv::snapshot()
