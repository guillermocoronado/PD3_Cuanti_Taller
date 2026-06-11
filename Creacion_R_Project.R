#----------------------------------------------------------------------------------
#PD3 - Módulo cuantitativo: GESTIONAR
#----------------------------------------------------------------------------------

#Cremos la estructura de carpetas de nuestro R Project-----------
dir.create("datos")
dir.create("datos/crudos")   # Para los archivos originales intocables (.sav, .csv)
dir.create("datos/limpios")  # Para las bases procesadas
dir.create("scripts")        # Para el código (.R)
dir.create("resultados")     # Para gráficos o tablas exportadas
dir.create("docs") #Para la documentación del proyecto

#Enlazamos con GitHub---------------------
install.packages("usethis")
usethis::use_git()
usethis::use_github()
usethis::create_github_token() 
gitcreds::gitcreds_set()

