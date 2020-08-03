#Asignacion
lst <- list(nombre = 'Pedro', esposa = 'María', no.hijos = 3, edad.hijos = c(4,7,9))

# trae el primer elemento de la lista con columna nombre
lst$nombre
lst[[1]]

# trae los siguientes elementos de la lista
lst[[2]]
lst[[3]]
lst[[4]]

# trae un arreglo dentro de la lista
lst[[4]][2]
lst[[4]][3]

# la siguiente asignacion no muestra a edad.hijos como un vector
# debido a que r no distingue entre vectores unicos ni escalares 
lst2 <- list(nombre = 'Jorge', esposa = 'Marta', no.hijos = 1, edad.hijos = c(4))

# Concatenacion de listas
lst.total <- c(lst,lst2)
lst.total

# una lista con dos listas dentro
lst.total2 <- list(lst, lst2)