# Data visualization workshop
# Data vis 1

full_trains <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")

library(tidyverse)

full_trains %>% 
  ggplot(aes(x = `journey_time_avg`), alpha = .2) + 
  geom_histogram(binwidth = 20, alpha = .4) +
  labs(x = "Journey Time (mins)", y = "Number of Instances", 
       title = "Histogram of Average Journey Time for trains on the SNCF Network")
