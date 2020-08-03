
# Funciones
valores <- c(2,3,5)

# sd sirve para calcular la desviacion estandar

#todo lo siguiente es equivalente
sd(x=valores, na.rm=FALSE)
sd(valores,F)
sd(valores)

# permite ver los argumentos de una funcion
args(sd)

# no importa el orden mientras contenga el nombre del parametro
sd(na.rm = FALSE, x =valores)

# NA es una palabra reservada
valores2 <- c(2,3,5,NA)

# No puede calcular la desviacion debido a NA
sd(valores2)

# de esta forma no considera NA y calcula la desviacion
sd(valores2,na.rm = TRUE)

# creacion de funciones
mi_suma <- function (a,b=5){
  c <- a+b
  return(c)
}

mi_suma(1,2)

args(mi_suma)

mi_resta <- function(a, b=0){
  c <- a-b
  return(c)
}

mi_resta(5,-3)

numero<-5;
mi_suma2 <- function(a,b=0){
  c <- a+b+numero
  return(c)
}
mi_suma2(1,2)
