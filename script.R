library(ggplot2)
library(reshape2)

data <- read.csv('./data.csv')

chart_data <- melt(data, id='x')
names(chart_data) <- c('x', 'func', 'value')

ggplot() +
  geom_line(data = chart_data, aes(x = x, y = value, color = func), size = 1)+
  xlab("x axis") +
  ylab("y axis")


