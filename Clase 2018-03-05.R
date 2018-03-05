#Dump y Source

setwd("~/Github/SoftwareActuarial3")
x <- "Software Actuarial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")

#dump y source trabajan con las instrucciones de código que permitirán volver a construir un objeto en lugar de obtenerlo desde alguna ubicación guardada.

#Conexiones
con <- url("https://www.fcfm.buap.mx/")
x <- readLines(con)
x[7] <- "\t<title>FCFM</title>"
writeLines(x,"FCFM.html")

#Extracción de subconjuntos
#Creamos un vector
x <- c("a","b","c","c","d","e")
#Extraemos elementos con []
x[1]
x[2]
#También podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen alguna condición
x[x>"b"]
#De manera equivalente se puede obtener un vector lógico
u <- x=="c"
u
x[u]
x[5-3]

#Creamos una lista
x <- list(foo=1:4,bar=0.6)
x
x[1] 
#El resultado es una lista que contiene al vector de la secuencia
x[[1]]
#El resultado es el vector de la secuencia de numeros
x$foo
#El resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]

x <- list(foo=1:4,bar=0.6, baz = "Hola")
x[c(1,3)]
#Extrae elementos no secuenciales 1 si, 2 no, 3 si
x[[c(1,3)]]
#Extrae secuencialmente desde los elementos extraidos
#Primero extra el 1er elemento y de ahí extrae la 3ra posición

name <- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extracciones con el $, es necesario escribir el nombre
#del objeto que quiero extraer, ya que no es capaz de realizar evaluaciones

#Subconjuntos de una matriz
x <- matrix(1:6,2,3)
x #La matriz completa
x[1,2] #Primer renglón, segunda columna
x[2,1] #Segundo renglón, primer columna
x[1,]  #Todo el primer renglón
x[,2]  #Toda la primera columna

x[1,2] #Se extrae un vector 
x[1,2,drop=FALSE] #drop=False hace que se extraiga una matriz 

x[1,]  #Se extrae un vector a partir de la primer fila de la matriz
x[1,,drop=FALSE] #Esa primer fila se extrae como si fuera otra matriz


#Subconjuntos con nombres
x <- lista(aardvardk=1:5)
x$a 
x[["a"]]
x[["a",exact=FALSE]]