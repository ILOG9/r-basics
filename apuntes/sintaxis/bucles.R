# bucle for
v <- rnorm(30)
elementos <- 10
v2 <- 0

for (i in 1:elementos) {
  v2[i] <- v[i] *v[i]
  cat("i: ",i," ",v[i]," ^2 = ",v2[i],"\n")
}

# bucles anidados - nested loop / creacion de matriz
matriz <- matrix(0,nrow=30,ncol=30)
matriz

# devuelve la dimension de la matriz
dim(matriz)
dim(matriz)[1]
dim(matriz)[2]

for (i in 1:dim(matriz)[1]) {
  for (j in 1:dim(matriz)[2]) {
    matriz[i,j] <- i*j;
    cat(i," * ",j," = ",matriz[i,j],"\n")
  }
}

#muestra una matriz de 10x10
matriz[1:10,1:10]

#bucle while
frase <- "Lorem ipsum dolor sit amet, consectetur. adipiscing elit."

#subcadena
substr(frase ,1 ,10)

i <- 0
letra <- ""

while (letra != '.') {
  i = i+1;
  letra <- substr(frase, i,i)
  cat(i," ",letra,"\n")
}

# Bucle repeat, infinito hasta que se indique lo contrario
repeat{
  i = i+1;
  letra <- substr(frase, i,i)
  cat(i," ",letra,"\n")
  if (letra == '.') {
    break
  }
}

# Otro uso de break

matriz <- matrix(0, nrow =30, ncol = 30)

for (i in 1:dim(matriz)[1]) {
  for (j in 1:dim(matriz)[2]) {
    if (i == j) {
      break
    }else{
      matriz[i,j] <- i* j
      cat(i,' * ',j,' = ',matriz[i,j],'\n')
    }
  }
}
matriz[1:10, 1:10]

#next 

i <- 0
letra <- ""

while (letra != '.') {
  i <- i+1
  letra <- substr(frase,i,i)
  if (letra == 'L') {
    next
  }
  cat(i," ",letra,"\n")
}

# cuando usar o no bucles

v1 <- seq(1,1000000000)
v2 <- seq(1,1000000000)
v1
v2
vt <- 0

# calcula el tiempo que toma la ejecucion de un comando
pt <- proc.time()
for (i in 1:10) {
  vt[i] <- v1[i]+v2[i]
}
proc.time() -pt
vt

# la suma de los vectores queda igual que al pasarla por un for
# es mucho mas veloz
vt <- v1 +v2

vt
