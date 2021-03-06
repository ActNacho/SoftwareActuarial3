#Aqu� se est� realizando una asignaci�n
x <- 1
x <- 2

#La asignaci�n no me permiti� visualizar el resultado, para ello debo solicitar una impresi�n
print(x)

#Al poner may�scula, que no ha sido definida, me marcar� error
print(X)

#La alternativa es solicitar una impresi�n implicita
x

#La asignaci�n puede hacerse tambi�n de textos
msg <- "Hola"

#Al solicitar una impresi�n, me deber� ense�ar el mensaje que estaba guardado
print(msg)

x <- #Expresi�n incompleta, para salir de ella (dejar de ejecutar esa instrucci�n incompleta) puedes presionar ESC

# Impresi�n de un arreglo
x <- 1:20
x
y <- 3:9
y
z <- 99:43
z
#El operador ":" me permite generar secuencias num�ricas de un principio a un fin
w <- 3:14.5
w
#En el caso de trabajar con decimales, me genera secuencias hasta los enteros correspondientes

#R nos permite trabajar con conceptos matem�ticos "superiores" como los n�meros complejos o el concepto de infinito
Inf
1/0
#Es posible hacer algunas operaciones con este valor
exp(-Inf)   # 0
Inf + Inf   # Inf
Inf * Inf   # Inf
Inf - Inf   # NaN (Not a Number)
Inf / Inf   # NaN 

#Cada objeto tiene sus propiedades o atributos los cuales se pueden accesar a partir de la funci�n attributes()

# Es posible crear un vector con la funci�n c()
x <- c(TRUE, FALSE, TRUE, TRUE, F, F, T)    #Logical
x <- c(1L, 3L, 5L, -4L)                     #Integer
x <- c(1,3,5,-4)                            #Numeric
x <- c(1,3,5,-4,3.141592654)
x <- c(1+1i,3+4i,-5-6i, 3.14-1.618i)        #Complex
x <- c("a","b","c","Hola","Mundo")          #Character

#Otro posible camino ser�a con la funci�n vector
x <- vector("numeric", length = 10)
#El vector se crea vac�o

#Coerci�n
y <- c(1.7,"a")             #Character
y <- c(TRUE,2L,2)           #Numeric
y <- c(FALSE, 2L, 5, 5+4i)  #Complex

#Coerci�n forzada
x <- 0:6            #Integer
as.numeric(x)       #Numeric
as.logical(x)       #Logical - Los 0 se vuelven False y todo lo dem�s en True
as.character(x)     #Character - Todo es texto

#Errores en la coerci�n forzada
x <- c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)       
#Apareceran NA porque esa coerci�n no es posible y genera un valor faltante NA