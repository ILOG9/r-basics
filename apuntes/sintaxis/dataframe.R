# asignacion de vectores
ciudades <- c('zaragoza', 'Barcelona', 'Madrid', 'Cartagena', 'Burgos')
sexo <- c('Hombre','Mujer')

# crea 100 elementos de ciudades con sus elementos en aleatorios
sample.ciudades <- sample(ciudades, 100, replace =  TRUE)
sample.ciudades

# Frecuencia de aparicion de los elementos
table(sample.ciudades)

# Añade una guia de probabilidad para la aparicion de elementos aleatorios
# Replace indica que un numero se puede repetir
sample.ciudades <- sample(ciudades, 100, replace =  TRUE, prob = c(.5,.2,.1,.1,.1))
table(sample.ciudades)

sample.sexo <- sample(sexo, 100, replace = TRUE)
table(sample.sexo)

# cien elementos incremental
num.followers <- c(1:100)
num.followers

num.followers <- sample(1:1000,100,replace = TRUE)
num.followers

# dataframe, deveulve una tabla que se asigna (titulo = columna, ...)
df <- data.frame(ciudades = sample.ciudades,
                 sexo = sample.sexo,
                 num.followers = num.followers)

# de esta forma no indexa el contenido del vector, y al no tratarlo como
# factor no los trata como niveles
df <- data.frame(ciudades = sample.ciudades,
                 sexo = sample.sexo,
                 num.followers = num.followers,
                 stringsAsFactors = FALSE)

df

# indexar elemento del dataframe
# R trabaja internamente con niveles-factores
# de esta forma solo almacena 1 vez un alfanumerico
# algunas veces puede ser un error
df[10,2]
df[10,1]
df[10,3]

num.friends <- sample(1:500, 100, replace = TRUE)

# Añadir nuevas columnas a un dataframe
df <- cbind(df, num.friends)
df

#Añadir una nueva fila a un dataframe
fila <- data.frame(ciudades = 'Zaragosa',
                   sexo = 'Mujer',
                   num.followers = 52,
                   num.friends = 122)
fila
df <- rbind(df, fila)
df

# trae solo una columna de la matriz dataframe
df$ciudades

#trae un subset de 10 elementos con dos columnas de un dataframe
df[c(1:10),c(1,2)]
df[c(1:10), c('ciudades', 'num.followers')]
df[c(1:10),]
df[, c('ciudades', 'num.followers')]

# Trae los nombres de las columnas en un dataframe
names(df)
names(df)[c(1,4)]

# Cambio de nombre en una columna
names(df)[c(3,4)] <- c('followers', 'friends')
df
