#Libreria para la resolución del problema
library(matlib)

# Asignar los coeficientes de las restricciones
# 2x1 + 3x2  <= 90        2   4     (1)
# 4x1 + 2x2  <= 100       3   2     (2)
# Definir el número de columnas en 2 y el número de filas en 2
E<-matrix(c(2,4,3,2), ncol = 2, nrow = 2)

# Asignar los valores del lado derecho de las desiguldades
# 2x1 + 4x2   <= 90        90      (1)
# 3x1 + 2x2   <= 100       100     (2)
F<- c(90,100)

plotEqn(E,F, xlim=c(0,40), labels=TRUE)


# Intersección A

# Intersección de la restricción 1 con la recta del eje x2
# Se resuelve de manera matricial como ;
# 2x1 + 3x2  = 90
# 4x1 + 2x2	 = 100

# entonces las matrices A y B quedan como:
# [A=
#             2     3
#             4     2
# ;B=
#             90
#             100
# ]

A <- matrix(c(2,3,4,2), nrow = 2, ncol = 2, byrow = T)
A
B <- matrix(c(90,100), nrow = 2, ncol = 1, byrow = F)
B
r <- solve(t(A)%*%A)%*%t(A)%*%B
r

# Definiendo la función objetivo

# Para ello escribe el código como
val<-matrix(c(0,30,15, 20 , 25, 0), nrow=3, ncol = 2, byrow=T)
# Mostrar la matriz val
val
##      [,1]      [,2]
## [1,]    0      30
## [2,]  15       20
## [3,]  25        0

FO<-matrix(c(8000,6000), nrow=2, ncol=1)
# Mostrar la matriz FO
FO
##      [,1]
## [1,]  8000
###[2,]  6000

r=val%*%FO
# Mostrar la matriz r
r
