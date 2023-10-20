## a figure 

library(dplyr)
library(ggplot2)
library(cowplot)
theme_set(theme_cowplot())

set.seed(2983)
dat <- tibble(x = rnorm(100),
              y = x + rnorm(100, sd = 0.2 ))

g1 <- ggplot(dat, aes (x,y)) + 
  geom_point()

ggsave('Untitled.png', g1)

