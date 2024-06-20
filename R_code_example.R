if (!require("remotes")) {
  install.packages("remotes")}
remotes::install_github("MathiasHarrer/dmetar")
#install.packages("remotes") #remotes::install_github("MathiasHarrer/dmetar") 
install.packages("metafor")
install.packages("tidyverse")
install.packages("devtools")
install.packages("meta")
install.packages("readxl")
install.packages("dplyr")
library(dmetar)
library(metafor)
library(tidyverse)
library(devtools)
library(meta)
library(readxl)
library(dplyr)



meta <- metacont(n1,m1,sd1,n2,m2,sd2,data = madata,studlab = paste (Author),fixed = FALSE,random = TRUE,method.tau = "SJ",hakn = TRUE,prediction =TRUE,sm = "SMD")
meta


IA.meta <- InfluenceAnalysis(x = meta,random = TRUE)
InfluenceAnalysis(x = meta,random = TRUE)
plot(IA.treat_control)


tf.meta <- trimfill(meta)
summary(tf.meta)
funnel(meta, bg = "green")


subgroup <- update.meta(meta,subgroup = Pathology,fixed = FALSE,random = TRUE)
subgroup


madata$Time<-as.numeric(madata$Time)
reg <-metacont(n1,m1,sd1,n2,m2,sd2,data = madata,studlab = paste (Author),fixed = FALSE,random = TRUE,method.tau = "SJ",hakn = TRUE,prediction =TRUE,sm = "SMD")
reg

output.reg <-metareg(reg,Time)
output.reg

