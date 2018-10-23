#This is EDA for ML with a heart competition. 

# -1. Libraries -----------------------------------------------------------

library(dplyr)
library(ggplot2)
library(googleVis)
library(randomForest)
library(caret)

# 0. Data loading ---------------------------------------------------------

train_values <- read.csv(file = "train_values.csv")
train_labels <- read.csv(file = "train_labels.csv")
test_values <- read.csv(file = "test_values.csv")



# 1. Having a quick look at the dataset -----------------------------------

str(train_values)

#Scatter plot of resting blood pressure and other continuous variables
ggplot(train_values, aes(x=resting_blood_pressure, y=serum_cholesterol_mg_per_dl)) +
  geom_point()

ggplot(train_values, aes(x=oldpeak_eq_st_depression, y=resting_blood_pressure)) +
  geom_point()

ggplot(train_values, aes(x=resting_blood_pressure, y=max_heart_rate_achieved)) +
  geom_point()


#Boxplots 
ggplot(train_values, aes(x=cut(oldpeak_eq_st_depression, breaks = 5), y=resting_blood_pressure)) +
  geom_boxplot()


