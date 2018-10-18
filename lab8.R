# Average June temperature 1970-2000, deg. C
juneTempsFile <- "wc2.0_10m_tavg_06.tif"
# Average June temperature 1960-1990, deg. C * 10
juneTempsFile2 <- "tmean6.bil"
# Average annual temperature 1970-2000, deg. C
avgTempFile <- "wc2.0_bio_10m_01.tif"

install.packages("raster")
install.packages("rgdal")

library(raster)
library(rgdal)

library(viridis)
plot(raster(juneTempsFile), col = plasma(255))

GDALinfo(juneTempsFile)#float 32
GDALinfo(juneTempsFile2)#int 16
GDALinfo(avgTempFile)#float 64

?GDALinfo

#The number after either float or int reffers to the number of bits
#used per data point. The XXX.


msiyield <- read.csv("Miscanthus_sinensis_yield (2).csv")
msiXY <- as.matrix(msiyield[,3:2])
colnames(msiXY) <- c("x", "y")
# remove rows without spatial coordinates
msiXY <- msiXY[!is.na(msiXY[,1]), ]

# make raster object for tmean6.bil
juneTempsRaster2 <- raster(juneTempsFile2)
# extract cell numbers
msiCells <- cellFromXY(juneTempsRaster2, msiXY)

# get temperatures
msiJuneTemp <- getValues(juneTempsRaster2)[msiCells]
msiJuneTemp

typeof(msiJuneTemp)

msiJuneTemp <- [] < 100

typeof(msiJuneTemp)

myGD < function(x){
  
  
  func1 <- function(y){
    out <- integer(length(y))
    
    out[grep(x <= 100, y)] <- 0
    out[grep(100<y<300, y)] <- (x-100) 
    out[grep(x >= 300, y)] <- 200
    
    y<100
    
    
    for(i in y){
      if(i <= 100){
        i <- 0
      } 
    }
  }
  
  two <- (y >= 300 <- 20
          three <- (100<y<300) <- (y - 100)
}
return(y)

}

func3 <- sapply(msiJuneTemp[1:10], func1 )
return(func3)
}


?sapply
vect1 <- integer(length(x))



#q 3
?`plot,Raster,ANY-method`
?raster
juneTempsRaster2
?plot