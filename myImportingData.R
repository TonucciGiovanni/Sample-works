library(rio)
pacman::p_load(pacman, psych, rio, tidyverse) 
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis,httr,lubridate,plotly,rio,
               rmarkdown,shiny,stringr,tidyr)
library(rio)

#CSV
rio_csv <- import("~/CourseFiles/ImportingData_Datasets/mbb.csv")
head(rio_csv)

#TXT
riotxt <- import("~/CourseFiles/ImportingData_Datasets/mbb.txt")
head(riotxt)

#EXCEL XLSX
r <- import("~/CourseFiles/ImportingData_Datasets/mbb.xlsx")
head(r)

#DATA VIEWER
?View
View(rio_csv)
View(r)

 