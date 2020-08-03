library(caret)

# Mas info sobre esta hoja de datos en:
# https://stat.ethz.ch/R-manual/R-devel/library/MASS/html/birthwt.html

# Carga un archivo .csv
bwt <- read.csv('../assets/bwt.csv')

# Leer bwt. Eliminar columna de id
bwt <- bwt[,-1]

# Usar 10-fold cross-validation para todos los modelos que siguen
ctrl <- trainControl(method = "cv", number = 10)

# Estimacion de modelo con regresion logistica
modelo1 <- train(lowweight~.,data=bwt,method="glm",trControl=ctrl)
modelo1

# KNN sin preproceso
modelo2 <- train(lowweight~.,data=bwt,method="knn",trControl=ctrl)
modelo2

# KNN con preproceso
modelo3 <- train(lowweight~.,data=bwt,method="knn",preProcess=c("center","scale"),trControl=ctrl)
modelo3

# KNN con preproceso y grid search para k
knnGrind <- expand.grid(k=c(1:100))
modelo3 <- train(lowweight~.,data=bwt,method="knn",preProcess=c("center","scale"),trControl=ctrl, tuneGrid=knnGrind)
modelo3

#CART: parametro de control masxdepth
modelo4 <- train(lowweight~.,data=bwt,method="rpart2",trControl=ctrl, tuneGrid=knnGrind)
modelo4

#CART: parametro de control masxdepth
cartGrid <-expand.grid(maxdepth=c(1:20))
modelo5 <- train(lowweight~.,data=bwt,method="rpart2",trControl=ctrl, tuneGrid=cartGrid)
modelo5
