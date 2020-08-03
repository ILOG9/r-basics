
# 3 formas de asignar un vector
x <- c(1,3,0.2,5.1,3)
assign("y", c(1,3,0.2,5.1,3))
c(1,3,0.2,5.1,3) -> z

# operacion sencilla de inversion numerica
1/x

# indice del vector para saber su valor
x[4]

# crea una variable que obtiene un vector con el resultado de la operacion
logico <- x > 1

# conserva solo los valores que cumplen la condicion
x[x>1]; x[logico]

# vector de vectores
y <- c(x,0,-x )

# operacion sobre un par de vectores
v <- 2 * x + y -1

# operadores normales en vectores
# +, -, *, /, //, **, ^
#otros operadores log, exp, sin, cos, tan, sqrt ...
max(x)
min(x)
length(x)
sum(x)
prod(x)
# mean(x): sum(x)/length(x)
mean(x)
# varianza de muestra
sum((x-mean(x))^2)/(length(x)-1)
# varianza de poblacion
sum((x-mean(x))^2)/(length(x))

#ordena el vector 
sort.list(x)
x[order(x)]
x[order(x, decreasing = T)]
