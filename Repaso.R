##Prueba 2 Obtencion de data pregunta 4
ruta2="http://biostat.jhsph.edu/~jleek/contact.html"
con=url(ruta2)
htmlCode<-readLines(con)
nchar(htmlCode[10]) #y asi con la linea 20,30 y 100
sapply(htmlCode[c(10,20,30,100)],nchar)## en lugar de cambiar linea por linea
