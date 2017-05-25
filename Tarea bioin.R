library(phangorn)
library(ape)

####cargar las secuencias 

Padina<- read.FASTA("Padina2.fasta")  

x<- read.dna("Padina2.fasta", format = "fasta", skip = 0,
         nlines = 0, comment.char = ">",
         as.character = TRUE, as.matrix = FALSE)


## análisis de distancias genéticas y elaboración de una matriz 


matriz<-dist.dna("x", model = "K80", variance = FALSE,
         gamma = FALSE, pairwise.deletion = TRUE,
         base.freq = NULL, as.matrix = TRUE)



## Análisis mediante Neighbor joinig con la matriz de distancias

treeNJ<-NJ(matriz)

