# Listas
x <- list(1, "a", TRUE, 3+2i, 5L, 1:50)
x
# Todos los elementos de una lista mantienen la clase que originalmente tenían por fuera de la lista

# Matrices
m <- matrix(nrow = 2, ncol=3)
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)

#Como llenar una matrix
m <- matrix(data=1:6, nrow = 2, ncol=3)
m <- matrix(1:6,2,3)
m
#La manera automática de llenarse fue columna por columna
#Si yo quisiera que se llenara fila por fila, sería:
m <- matrix(data=1:6, nrow = 2, ncol=3, byrow = TRUE)
m <- matrix(1:6,2,3,T)
m

#Una manera alterativa de crear una matrix es desde un vector y modificar sus "dimensiones"
m <- 1:10
m
dim(m) <- c(2,5)
m

# Otra forma de crear una matriz es uniendo diferentes vectores
x <- 1:3
y <- 10:12
# CBind, unir columnos
cbind(x,y)
rbind(x,y)

#Factores
x <- factor(c("Si", "Si", "No", "No", "Si"))
x

#factores por orden alfabético
x <- factor(c("Azul", "Verde", "Verde", "Azul","Rojo"))
x 
table(x)
unclass(x)

#Factores con orden definido
x <- factor(c("Azul", "Verde", "Verde", "Azul","Rojo"),levels=c("Rojo","Amarillo", "Verde","Azul"))
x
x

#Valores faltantes
x <- c(1,2,NA,10,3)
is.na(x)    #Valor faltante detectado
is.nan(x)   #Valor no numérico que no es faltante

y <- c(1,2,NaN,10,3)
is.na(y)    #Valor faltante detectado
is.nan(y)   #Valor no numérico que no es faltante

# Data Frame
x <- data.frame(foo=1:4, bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#Cada objeto en R puede tener su propio nombre
x <- 1:3
names(x)
names(x) <- c("foo","bar","norf")
names(x)

#Los elementos de una lista también pueden recibir un nombre
x <- list(a=1,b=2,c=3)
x

#En las matrices, tanto las filas como las columnas pueden tener su nombre... Similar a Excel que pone números en las filas y letras en las columnas como nombres.
m <- matrix(1:4,nrow=2,ncol=2)
m
dimnames(m) <- list(c("a","b"),c("c","d"))
m