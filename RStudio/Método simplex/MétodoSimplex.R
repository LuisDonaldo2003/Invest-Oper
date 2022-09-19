# Importar la libreria
library(lpSolve)

# Se guardan en una matriz los coeficientes de la función objetivo
funcion_objetivo <- c(8000,6000)
funcion_objetivo
# Asignar los coeficientes de las desigualdades
# 2x1 + 3x2  <= 90         2  4      (1)
# 4x1 + 2x2  <= 100        3  2      (2)
# Definir el número de filas en 3
restriciones_derecho <- matrix(c(2,3,4,2), nrow = 2, byrow = T)

# Se muestra el valor de la matriz
restriciones_derecho

# Se guarda en una matriz los simbolos de las desigualdades
restriccion.direccion <- c("<=", "<=")
restriccion.direccion
# Asignar los valores del lado derecho de las desiguldades
# 2x1 + 3x2  <= 90          90       (1)
# 4x2 + 2x2 <= 100         100       (2)
lado_derecho.restriccion <- c(90,100)
lado_derecho.restriccion
# Se ejecuta la instrucción para mostrar el resultado que maximize la función
lp(direction = "max", objective.in = funcion_objetivo, const.mat =restriciones_derecho, const.dir = restriccion.direccion, const.rhs = lado_derecho.restriccion, int.vec = c(1,2,3,4,5), all.int = T)

# Se ejecuta la instrucción para mostrar los valores de x1 y x2.
lp(direction = "max", objective.in = funcion_objetivo, const.mat =restriciones_derecho, const.dir = restriccion.direccion, const.rhs = lado_derecho.restriccion, int.vec = c(1,2,3,4,5), all.int = T)$solution
