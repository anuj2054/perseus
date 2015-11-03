library(reshape2)
setwd("C:/Users/dnarules/Desktop/Anuj")
RESULTS2_onlyCorrelation<-read.table('RESULTS2_onlyCorrelation.tsv',header=TRUE,sep='\t')
RESULTS2_onlyCorrelationCast <- dcast(RESULTS2_onlyCorrelation,p1~p2)
rownames(RESULTS2_onlyCorrelationCast) <- RESULTS2_onlyCorrelationCast$p1
RESULTS2_onlyCorrelationCast$p1 <- NULL
RESULTS2_onlyCorrelationCastMatrix <- data.matrix(RESULTS2_onlyCorrelationCast)
heatmap(RESULTS2_onlyCorrelationCastMatrix[,220:239],Rowv=NA,Colv=NA,col = cm.colors(256))