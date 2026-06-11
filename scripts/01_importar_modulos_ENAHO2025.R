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

#2.Importar---------------
mod100 <- import("datos/crudos/Enaho01-2025-100.csv")
