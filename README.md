# Análisis del Mercado Laboral y Formalidad en el Perú (ENAHO)

## Descripción del Proyecto
Este repositorio contiene el flujo de trabajo completo del proyecto "Informe sobre la formalidad e informalidad laboral en el Perú", realizado utilizando la Encuesta Nacional de Hogares (ENAHO) de 2021 a 2025.

El análisis explora la relación entre la formalidad y diversas dimensiones:
* **Demográficas:** Quintiles de ingresos, grupos de edad, nivel educativo, lengua materna y ubicación geográfica (macrozonas y mapa de ubigeos).
* **Institucionales y de Salud:** Condición de discapacidad, régimen de aseguramiento, gasto de bolsillo en salud y niveles de confianza en el gobierno central.

## Requisitos y Entorno Computacional
El proyecto está desarrollado utilizando la versión 4.5.3 de **R**. Para garantizar la reproducibilidad metodológica del análisis, la gestión de dependencias y versiones de paquetes se realiza estrictamente a través de `renv`.

Las herramientas e librerías principales empleadas son:
* `tidyverse`: Para la manipulación relacional de datos y visualización (incluye `dplyr`, `ggplot2`, etc.).
* `rio` y `readr`: Para la lectura robusta de las bases de datos originales del INEI y manejo de codificaciones.
* `arrow`: Para la lectura y escritura supereficiente de las bases consolidadas en formato Parquet, optimizando el uso de memoria RAM.
* `janitor`: Para la limpieza y estandarización metodológica de los nombres de variables.

## Estructura del Directorio
El proyecto sigue una arquitectura de carpetas diseñada para separar claramente los datos crudos, los procesos de transformación y los productos analíticos finales:

```text
├── Creacion_R_Project.R        # Script principal: Configuración del entorno, creación de carpetas y enlace a GitHub
├── datos/
│   ├── crudos/                 # Módulos originales de la ENAHO en formato .csv
│   └── limpios/                # Bases maestras procesadas en formato .parquet (Output de scripts 01 y 02)
├── scripts/
│   ├── 01_Importar_modulos_ENAHO.R        # Carga masiva y cruce (merge) de los módulos 100, 200, 300, 400, 500 y Gobernabilidad
│   ├── 02_Limpieza_ENAHO.R           # Limpieza, recodificación y creación de variables (PEA, PET, Ocupados, Formalidad)
│   ├── 03_Exploracion.R        # Análisis descriptivo y generación de cruces bivariados
│   └── 04_Informe_Final.Rmd    # Código fuente dinámico para la elaboración del reporte
├── resultados/                 # Outputs finales: tablas, gráficos descriptivos y el informe en .pdf
├── renv/                       # Carpeta aislada del entorno local de paquetes
├── renv.lock                   # "Cápsula del tiempo": Registro exacto de las versiones de las librerías
├── .gitignore                  # Configuración de exclusión para evitar la subida de datos masivos al repositorio
└── [Nombre_del_Proyecto].Rproj # Archivo de inicialización del entorno R
