# contiene el valor del pixel de 0 a 255
train <- read.csv("../assets/MNIST-OCR/train.csv", header=TRUE)

# Revision simple sobre la data
unique(train$label)
names(train)

# 42000 registros y 785 variables
dim(train)

# Transformamos los datos  auna matriz
train <- as.matrix(train)

colors <- c('white','black')
cus_col <- colorRampPalette(colors = colors)

# mfrow = subidivison del plot en 4 filas y tres columnas
# pty = pintar
# mar = pinta los cuatro margenes
# xart = sin eje de x ni eje de Y
par(mfrow = c(4,3), pty = 's', mar = c(1,1,1,1), xaxt = 'n', yaxt = 'n')

# array que contiene los 10 posibles valores
# calcula la media de los numeros
all_img <- array(dim = c(10, 28*28))
for (di in 0:9) {
  print(di)
  all_img[di+1,] <- apply(train[train[,1] == di, -1], 2,sum)
  all_img[di+1,] <- all_img[di+1,]/max(all_img[di+1,])*255
  z <- array(all_img[di+1,], dim = c(28,28))
  z <- z[,28:1]
  image(1:28,1:28,z,main = di,col = cus_col(256))
}

# Crea un pdf de la data en MINST
pdf('train_letters.pdf')
par(mfrow = c(4,4), pty = 's', mar=c(3,3,3,3), xaxt = 'n', yaxt='n')
for (i in 1:nrow(train)) {
  z <- array(train[i,-1], dim = c(28,28)) 
  # damos vuelta la matriz
  z <- z[,28:1]
  image(1:28, 1:28, z, main = train[i,1], col = cus_col(256))
  print(i)
}
dev.off()