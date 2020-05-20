setwd("D:/Documents/principal/MAYO/r")
dt<-read.table("file.txt",header=TRUE,sep=",")
x<-1:10
# instalar driver
install.packages("sqldf")
library(sqldf)
data()
sqldf("select * from dt where variable>10")
sqldf('select * from dt where Nom like "%15"')


# install.packages("tidyverse")
install.packages("dplyr")
# proporciona un mejor gramatica para manipulacion y operaciones con dataframes
library(dplyr)
# Verbos
# select, filter, arrange, rename, mutate, summarise/summarize, _%>% (pipeline)

install.packages("devtools")
devtools::install_github("rstudio/EDAWR")
library(EDAWR)


