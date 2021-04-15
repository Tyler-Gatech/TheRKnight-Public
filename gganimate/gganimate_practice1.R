
#install.packages("gifski")
library(gifski)
library(gganimate)

#you may get this error below. If so, install the gifski package above , and restrt R
# No renderer backend detected. gganimate will default to writing frames to separate files
# Consider installing:
#   - the `gifski` package for gif output
# - the `av` package for video output
# and restarting the R session
# Warning message:
#   package 'gganimate' was built under R version 4.0.5 

library(ggplot2)
library(tidyverse)

theme_set(theme_bw())


test_data <- tibble(
              years = c(0:10), 
              salary = seq(0, 100000, by = 10000)
              )


#simple line graph 
test_plot <- test_data %>% 
  ggplot(aes(x = years, 
             y = salary)) + 
  geom_line(aes(size = 3),  color = "#fb8c00") +
  ggtitle("") +
  xlab("") +
  ylab("") +
  theme_bw() +
  scale_x_continuous(limits=c(0,10), 
                     breaks=seq(0,10,1)) +
  theme(legend.position = "none", #removes legend
        axis.text=element_text(size=28, face = "bold"))

#View the test plot
test_plot

anim <- test_plot + 
  transition_reveal(years) + 
  enter_fade() +
  exit_fade()

salary_gif <- anim %>% 
  animate( nframes = 10, duration = 2, end_pause = 2)

#no file is specified, as its using the current Viewer file
anim_save("./public/img/salary_1.gif")

