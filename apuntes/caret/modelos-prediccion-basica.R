# modelos de data mining para prediccion
# regresion lineal, knn y arboles
library(caret)

# Trae los datos desde un .csv a la variable energy
energy <- read.csv(file=" ../assets/energy.csv")

# Eliminar columna de id y columna SurfaceTotal (para evitar multicolinealidedad perfecta)
# la multicolinealidad se da cuando dos variables son directas entre si de alguna forma
energy <- energy[, -c(2,9)]

# Usa 10 validaciones cruzadas para los metodos que siguen
ctrl <- trainControl(method = "cv",number<-10)

# Estimacion del modelo con una regresion lineal
modelo1 <- train(HeatingLoad ~.,data=energy,method="lm",trControl=ctrl)
modelo1

# KNN sin preprocesar, sensible a overfiting, se entrena con pocos datos ya que aprende durante los test
modelo2 <- train(HeatingLoad ~.,data=energy,method="knn",trControl=ctrl)
modelo2

# KNN con preprocesamiento 
# -center: le quita la media
# -scale: divide entre la desviacion estandar
modelo2 <- train(HeatingLoad ~.,data=energy,method="knn",preProcess=c("center","scale"),trControl=ctrl)
modelo2


# KNN con preprocesamiento y grid search para k
knnGrid <- expand.grid(k=c(1,5,10,30,100))
knnGrid
modelo3 <- train(HeatingLoad ~.,data=energy,method="knn",preProcess=c("center","scale"),tuneGrid=knnGrid,trControl=ctrl)
modelo3

# KNN Grid con dos argumentos
knnGrid2 <- expand.grid(k=c(1,5,10,30,100),p=c(5,7))
knnGrid2

# CART: Paramentro de control = maxdepth
modelo4 <- train(HeatingLoad ~.,data=energy,method="rpart2",trControl=ctrl)
modelo4

# CART: Paramentro de control = maxdepth ,el programa retorna que 3 es su valor optimo
modelo4 <- train(HeatingLoad ~.,data=energy,method="rpart2",trControl=ctrl, maxdepth=3)
modelo4

# CART: otra forma que busca el valor optimo
cartGrid <- expand.grid(maxdepth=c(1,5,10,20))
modelo4 <- train(HeatingLoad ~.,data=energy,method="rpart2",tuneGrid=cartGrid,trControl=ctrl)
modelo4
