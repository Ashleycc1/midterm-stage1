library(readxl)
strawb <- read_xlsx("~/Desktop/midterm-stage1/strawberries-2022oct30-a.xlsx", col_names = T)

#1
which(strawb$Value==285)

View(strawb)
#2
data1 <- filter(strawb, Year==2016 & State==c("CALIFORNIA") & Domain=="ORGANIC STATUS")
View(data1)
range <- 231304956*1.96*0.137
lower <- 231304956-62110007
upper <- 231304956+62110007
#3
data2 <- filter(strawb, Year==2016 & State==c("CALIFORNIA") & Domain=="TOTAL")
#4
#strawb_chem <- strawb_non_organic %>% slice(chem_rows, preserve = FALSE)
strawb_chem %>% group_by(State) %>% 
    summarize(count_distinct = n_distinct(chem_name))
#5
strawb_chem %>% group_by(State) %>% 
  summarize(count_distinct = n_distinct(chem_name))
