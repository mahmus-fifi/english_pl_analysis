# epl analysis
#Written by Mahmud Shuaib
#07-oct-2021
install.packages("here")
install.packages("janitor")
install.packages("tidyverse")
library("janitor")
library("here")
library("dplyr")
library(ggplot2)
library(tidyverse)
df_epl <- read_csv("epldata_final.csv")
head(df_epl)
colnames(df_epl) # show column names 
glimpse(df_epl)
View(df_epl)
club_fl <- filter(df_epl, club == "Liverpool" & age > 28)
View(club_fl) #view arsenal club members
ggplot(data = club_fl, aes(x = name, y = age)) + geom_bar(stat = "identity") #basic bar plot  # nolint
df_tibb <- tibble(df_epl)
View (df_tibb) # nolint
#chaining by pipes
df_tibb %>%
    select(name, club, market_value) %>%
    filter(market_value >= 35)
    

#summarize by club and find mean flp_value
df_tibb %>%
    summarise(max_fpl_value = max(fpl_value))
