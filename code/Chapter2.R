library(scidesignR)
library(paletteer)
library(tidyverse)
library(hrbrthemes)
theme_set(
  theme_ipsum())

# I will skip to the sim data parta since I kind of already know data wrangling + viz, I hope

nhefsdf <- 
  scidesignR::scidesignR_example("nhefshwdat1.csv") |> 
  read.csv()

glimpse(nhefsdf)

names(nhefsdf)

library(patchwork)

barpl <- nhefsdf %>% 
  ggplot(aes(education.code)) + 
  geom_bar(fill = "#3D98D3FF",
           col = "black")

histpl <- nhefsdf %>% 
  ggplot(aes(age)) + 
  geom_histogram(binwidth = 10, colour = "black",
                 fill = "#F9791EFF") 

barpl + histpl


# Generating Data in R ----------------------------------------------------

# Awesome looking forward to it

set.seed(11) # for reproducing it

gendf <- 
  tibble(
    trt = sample(c(rep("trt1", 5), rep("trt2", 5))),
    value = sample(1:1000000, 10))
  


