
vector <- sample(-10:35, 72, replace = TRUE)
table(vector)

# serie de tiempo, los pronter temporales son start, end y frequency
timeserie = ts(vector, start = c(2011,1), end = c(2016,12), frequency = 12)

# la salida devuelve una matriz con los datos previamente indicados
timeserie

# podemos ver como se distribuye a lo largo del tiempo nuestra variable
plot(timeserie)

# definimos que parte de una variable timeserie queremos ver
timeserie2 <- window(timeserie, start = c(2014,1), end = c(2014,12))
timeserie2
