# Find out, which __year__ was the __most terrific__ for portfolio you have identified as __most profitable__ during the lesson and 
# show it on the chart using `ggplot2` package. Write an explanation about your findings into the code as comment.
# __Commit__ it to your repository into `Lessons/Lesson2/Homework`.

# libraries
library(dplyr)
library(ggplot2)

# load data
dt_KPI_raw <- read.csv("C:/Users/PC/Documents/GeneralInsurance_Class/data/lesson2_KPI.csv")

dt_KPI_raw <- dt_KPI_raw %>% filter(!is.na(Premium))
for(i in 1:length(dt_KPI_raw$Premium))
{
  if(dt_KPI_raw$Premium[i]<0) 
  {
    dt_KPI_raw$Premium[i]=0
  }
}


dt_KPI_raw %>%  mutate(uwr=Premium-Expenses-Losses) %>% 
  group_by(Year) %>% 
  summarize(uwr = sum(uwr, na.rm = TRUE)) %>%arrange(uwr)

dt_KPI_raw %>% 
  mutate(uwr=Premium-Expenses-Losses) %>% 
  group_by(Year) %>% 
  summarize(uwr = sum(uwr, na.rm = TRUE)) %>% 
  ggplot(aes(x = reorder(Year, uwr), y = uwr)) + 
  geom_col()




# Your Explanation about analysis:
# 
#najhorsi rok bol 2015 lebo ma najnizsie uwr
# 
# 
