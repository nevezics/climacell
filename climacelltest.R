library (xts)

##Merohelyek
placename <- "HAZ1"
placename  <- "HAZ2"
placename  <- "EGER1"
placename  <- "EGER2"
placename <- "ESZEGELY1"
placename <- "ESZEGELY2"
placename <- "BUKKOS1"
placename <- "BUKKOS2"
placename <- "KTT1"
placename <- "KTT2"

##TXTBeolvasas
filename <- dir("../hom_para_NCS", placename)
assign(placename, read.csv(paste0("../hom_para_NCS/", filename[1]), skip = 1, head = FALSE))
for(aktfile in filename[-1]) {
  assign(placename, rbind(get(placename), read.csv(paste0("../hom_para_NCS/", aktfile), skip = 1, head = FALSE)))
}

##HAZ1(1perces; hom[,1]; para [,2])
ttime <- as.POSIXct(HAZ1[,2])
HAZ1.xts <- xts(HAZ1[,3:5], ttime)
plot(HAZ1.xts [,1])
plot (HAZ1.xts[,2])
write.zoo (HAZ1.xts[,1], "HAZ1hom.csv",sep=";",dec=",")
write.zoo (HAZ1.xts[,2], "HAZ1para.csv",sep=";",dec=",")


##HAZ2(2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(HAZ2[,2])
HAZ2.xts <- xts(HAZ2[,3:5], ttime)
plot (HAZ2.xts[,1])
plot (HAZ2.xts[,2])
write.zoo (HAZ2.xts[,1], "HAZ2hom.csv",sep=";",dec=",")
write.zoo (HAZ2.xts[,2], "HAZ2para.csv",sep=";",dec=",")


##EGER1 (1perces; hom[,1]; para[,2])
ttime <- as.POSIXct(EGER1[,2])
EGER1.xts <- xts(EGER1[,3:5], ttime)
plot (EGER1.xts[,1])
plot (EGER1.xts[,2])
write.zoo (EGER1.xts[,1], "EGER1hom.csv",sep=";",dec=",")
write.zoo (EGER1.xts[,2], "EGER1para.csv",sep=";",dec=",")

##EGER2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(EGER2[,2])
EGER2.xts <- xts(EGER2[,3:5], ttime)
plot (EGER2.xts[,1])
plot (EGER2.xts[,2])
write.zoo (EGER2.xts[,1], "EGER2hom.csv",sep=";",dec=",")
write.zoo (EGER2.xts[,2], "EGER2para.csv",sep=";",dec=",")

##ESZEGELY1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(ESZEGELY1[,2])
ESZEGELY1.xts <- xts(ESZEGELY1[,3:5], ttime)
plot (ESZEGELY1.xts[,1])
plot (ESZEGELY1.xts[,2])
write.zoo (ESZEGELY1.xts[,1], "ESZEGELY1hom.csv",sep=";",dec=",")
write.zoo (ESZEGELY1.xts[,2], "ESZEGELY1para.csv",sep=";",dec=",")

##ESZEGELY2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(ESZEGELY2[,2])
ESZEGELY2.xts <- xts(ESZEGELY2[,3:5], ttime)
plot (ESZEGELY2.xts[,1])
plot (ESZEGELY2.xts[,2])
write.zoo (ESZEGELY2.xts[,1], "ESZEGELY2hom.csv",sep=";",dec=",")
write.zoo (ESZEGELY2.xts[,2], "ESZEGELY2para.csv",sep=";",dec=",")

##BUKKOs1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(BUKKOS1[,2])
BUKKOS1.xts <- xts(BUKKOS1[,3:5], ttime)
plot (BUKKOS1.xts[,1])
plot (BUKKOS1.xts[,2])
write.zoo (BUKKOS1.xts[,1], "BUKKOS1hom.csv",sep=";",dec=",")
write.zoo (BUKKOS1.xts[,2], "BUKKOS1para.csv",sep=";",dec=",")

##BUKKOS2 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(BUKKOS2[,2])
BUKKOS2.xts <- xts(BUKKOS2[,3:5], ttime)
plot (BUKKOS2.xts[,1])
plot (BUKKOS2.xts[,2])
write.zoo (BUKKOS2.xts[,1], "BUKKOS2hom.csv",sep=";",dec=",")
write.zoo (BUKKOS2.xts[,2], "BUKKOS2para.csv",sep=";",dec=",")

##KKT1 (2perces; hom[,1]; para[,2])
ttime <- as.POSIXct(KTT1[,2])
KTT1.xts <- xts(KTT1[,3:5], ttime)
plot (KTT1.xts[,1])
plot (KTT1.xts[,2])
write.zoo (KTT1.xts[,1], "KTT1hom.csv",sep=";",dec=",")
write.zoo (KTT1.xts[,2], "KTT1para.csv",sep=";",dec=",")

##KTT2 (2perces; hom[1]; para[,2])
ttime <- as.POSIXct(KTT2[,2])
KTT2.xts <- xts(KTT2[,3:5], ttime)
plot (KTT2.xts[,1])
plot (KTT2.xts[,2])
write.zoo (KTT2.xts[,1], "KTT2hom.csv",sep=";",dec=",")
write.zoo (KTT2.xts[,2], "KTT2para.csv",sep=";",dec=",")