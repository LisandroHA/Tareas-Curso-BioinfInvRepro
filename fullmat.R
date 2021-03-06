##Elegir el WD con la opci�n Session-SetWorkingDirectory-ToSourceFileLocation "../BioinfInvRepro2017-II-master/Unidad6/Prac_Uni6/maices/bin"

####CArgar el archivo

fullmat<-read.delim("../meta/maizteocintle_SNP50k_meta_extended.txt")

###Ver el tipo de objeto creamos al cargar la base

class(fullmat)

###Para ver las primeras 6 l�neas del archivo

head(fullmat)

###�Cu�ntas muestras hay?

nrows(fullmat)

###�De cu�ntos estados se tienen muestras?

length(unique(fullmat$Estado))

###�Cu�ntas muestras fueron colectadas antes de 1980?

length(fullmat$A..o._de_colecta[which(fullmat$A..o._de_colecta < 1980)])

###�Cu�ntas muestras hay de cada raza?

summary(fullmat$Raza)

###En promedio �a qu� altitud fueron colectadas las muestras?

mean(fullmat$Altitud)

###�Y a qu� altitud m�xima y m�nima fueron colectadas?

max(fullmat$Altitud)
min(fullmat$Altitud)

###Crear una nueva df de datos s�lo con las muestras de la raza Olotillo

df.olotillo<-subset(fullmat, fullmat$Raza == "Olotillo")

###Crea una nueva df de datos s�lo con las muestras de la raza Reventador, Jala y Ancho

df.rejaan<-subset(fullmat, Raza=="Reventador"|Raza=="Jala"|Raza=="Ancho")

###Escribe la matriz anterior a un archivo llamado "submat.cvs" en /meta.

write.csv(df.rejaan, file="../meta/submat.csv")