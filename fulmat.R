##Elegir el WD con la opción Session-SetWorkingDirectory-ToSourceFileLocation "../BioinfInvRepro2017-II-master/Unidad6/Prac_Uni6/maices/bin"

####CArgar el archivo

fullmat<-read.delim("../meta/maizteocintle_SNP50k_meta_extended.txt")

###Ver el tipo de objeto creamos al cargar la base

class(fullmat)

###Para ver las primeras 6 líneas del archivo

head(fullmat)

###¿Cuántas muestras hay?

nrows(fullmat)

###¿De cuántos estados se tienen muestras?

length(unique(fullmat$Estado))

###¿Cuántas muestras fueron colectadas antes de 1980?

length(fullmat$A..o._de_colecta[which(fullmat$A..o._de_colecta < 1980)])

###¿Cuántas muestras hay de cada raza?

summary(fullmat$Raza)

###En promedio ¿a qué altitud fueron colectadas las muestras?

mean(fullmat$Altitud)

###¿Y a qué altitud máxima y mínima fueron colectadas?

max(fullmat$Altitud)
min(fullmat$Altitud)

###Crear una nueva df de datos sólo con las muestras de la raza Olotillo

df.olotillo<-subset(fullmat, fullmat$Raza == "Olotillo")

###Crea una nueva df de datos sólo con las muestras de la raza Reventador, Jala y Ancho

df.rejaan<-subset(fullmat, Raza=="Reventador"|Raza=="Jala"|Raza=="Ancho")

###Escribe la matriz anterior a un archivo llamado "submat.cvs" en /meta.

write.csv(df.rejaan, file="../meta/submat.csv")