library(datasets)

#historigrama
hist(airquality$Ozone)

#scatterplot
with(airquality, plot(Wind,Ozone))

#boxplot
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month(x)", ylab = "Ozone (ppb)(y)")

# Parametros importantes:
# -pch: el simbolo del punto (por defecto un círculo)
# -lty: el tipo de línea(por defecto sólida): pueden ser rallitas, puntos...
# -lwd: el grosor de la linea
# -col: el color
colors()
# -xlab: el texto del eje x
# -ylab: el texto del eje y

# Principales funciones
# -plot: Dibuja un scatterplot o de otro tipo, dependiendo de los datos
# -lines: Añade una linea al plot
# -points: Añade puntos al plot
# -text: Añade texto al plot en las coordenadas especificadas
# -tittle: Añade anotaciones a los ejes, título, subtítulo, o fuera del margen
# -mtext: Añade texto a los margenes
# -axis: Añade nuevos ejes

#Ejemplo de varios parametros
with(airquality, plot(Wind, Ozone, main = "Ozono y viento en New York", type = "n"))
with(subset(airquality, Month==5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month!=5), points(Wind, Ozone, col = "red"))
legend("topright", pch=1, col=c("blue","red"), legend=c("Mayo", "Otros meses"))

# Linea de regresión - indica la tendencia de los datos
with(airquality, plot(Wind,Ozone,main="Ozono y viento en New York",pch=20))
modelo <- lm(Ozone~Wind,airquality)
abline(modelo,lwd=2)

# Multiples plot - mfrow indica como se distribuyen los graficos
par(mfrow = c(1,3))
with(airquality,{
  plot(Wind,Ozone,main="Ozono y viento")
  plot(Solar.R,Ozone,main="Ozono y radiacion solar")
  plot(Temp,Ozone,main="Ozono y temperatura")
  mtext("Ozono y tiempo atmosferico en New York", outer=TRUE)
})
