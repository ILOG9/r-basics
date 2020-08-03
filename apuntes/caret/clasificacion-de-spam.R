
# ejemplo de spam

library(kernlab)
library(caret)
data(spam)
table(spam$type)
view(spam)

# Tabla con spam y no spam, lo siguiente cuenta su cantidad en el arreglo
table(spam$type)

# un 75% aprox se asigna para entrenamiento
inTrain <- createDataPartition(y = spam$type, p = .75, list = F)

# asignamos a cada parte su correspondiente set de datos
training <- spam[inTrain,]
testing <- spam[-inTrain,]

# generamos un modelo utilizando la variable type en la busqueda
# glm = modelo lineal no generalizado(permite una distribucion de errores distinta a una distribucion normal)
modelFit <- train(type ~ ., data = training, method = "glm")

# utilizamos la prediccion sobre la nueva data
predictions <- predict(modelFit, newdata = testing)

# entrega datos de la capacidad predictiva del algoritmo
confusionMatrix(predictions, testing$type)
