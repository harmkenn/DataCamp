# =======================================
# =   Machine Learning with tidyverse    =
# =            Daniel Jiménez            =
# =         Senior Data Scientist        =
# =               Merlin                 =
# =           2019-07-245                =
# =======================================


# Libraries ------------------------------------------

if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, modelr, gapminder,dslabs, broom, Metrics, rsample, gridExtra, ranger)

theme_set(theme_bw())




#  The workflow for tidy Machine Learning  ------------------
# 1. Make a list column -> nest()
# 2. Work with a list column -> map()
# 3. Simplify Column -> unnest() & map_*()




# Nest by  country ----------------
# With nested dataframe you can access it directly

data("gapminder")
gapminder%>%
  glimpse()

gapminder <- read.csv("gapminder.csv") %>% select(-1)

gapminder%>%
  group_by(country)%>%
  nest()->nested

nested$data[[2]]

# With unnest containg all the list (columns) of the dataframe

nested%>%
  unnest(data)

algeria_df <- nested$data[[2]]
algeria_df%>%glimpse()


# Some operations 

# Min
min(algeria_df$population, na.rm = T)

# Max
max(algeria_df$population, na.rm = T)

# Mean
mean(algeria_df$population, na.rm = T)

# The map family of functions

map(.x = nested$data, .f = ~mean(.x$population,na.rm = TRUE))


# thme most better practice for this is 

nested%>%
  mutate(pop_mean= map_dbl(data,~mean(.x$population,na.rm = T)))->population

# In this section  analyze de country  for mean population 
population%>%
  unnest(pop_mean)%>%
  arrange(desc(pop_mean))

population%>%
  unnest(pop_mean)%>%
  arrange(desc(pop_mean))%>%
  head(20)%>%
  ggplot(aes(reorder(country, pop_mean),pop_mean))+
  geom_col()+
  scale_y_continuous(labels =scales::comma)+
  coord_flip()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  labs(x='none', y='Average Population', title = 'What are the 20 contries with\n the largest population?')+
  theme(plot.title = element_text(hjust = .5))



# Build models with map

nested%>%
  mutate(model=map(data,~lm(formula = population~fertility, data=.x)))->gap_models

# Extract the model for Australia

gap_models$model[[8]]->Australia_models

Australia_models%>%
  summary()



#  Tidy models with Broom ----------------------------------

tidy(Australia_models)
glance(Australia_models)
augment(Australia_models)

# Construct A Single Row Summary "Glance" Of A Model, Fit, Or Other Object

# Plotting Augment Austria Model



augment(Australia_models)%>%
  ggplot(mapping = aes(x=fertility))+
  geom_point(mapping =aes(y=population))+
  geom_line(mapping = aes(y=.fitted ))+
  scale_y_continuous(labels = scales::comma)

# No is a good model 


nested%>%
  mutate(model=map(data,~lm(formula = life_expectancy~year, data=.x)))->gap_models


Australia_models<-gap_models$model[[8]]


Australia_models%>%
  summary()

augment(Australia_models)%>%
  ggplot(mapping = aes(x=year))+
  geom_point(mapping =aes(y=life_expectancy))+
  geom_line(mapping = aes(y=.fitted ), col='red')+
  labs(y='life Expectancy')


# Exploring coefficients across models -----------------------------------------


gap_models%>%
  mutate(coef=map(model,~tidy(.x)))%>%
  unnest(coef)


# Extract the coefficient statistics of each model into nested dataframes
model_coef_nested <- gap_models %>% 
  mutate(coef = map(model, ~tidy(.x)))

# Simplify the coef dataframes for each model    
model_coef <- model_coef_nested %>%
  unnest(coef)

# Plot a histogram of the coefficient estimates for year         
model_coef %>% 
  filter(term == "year") %>% 
  ggplot(aes(x = estimate)) +
  geom_histogram()


# Evaluating the fit of many models


model_perf<-gap_models%>%
  mutate(coef=map(model,~glance(.x)))%>%
  unnest(coef)

model_perf



fullmodel_perf <- gap_fullmodels %>% 
  mutate(fit = map(model, ~glance(.x))) %>% 
  unnest(fit)






# Best & worst fitting models
# the best models
model_perf%>%
  top_n(10,wt = r.squared)->best_fit

# the worst models
model_perf%>%
  top_n(10,wt = -r.squared)->worst_fit

fullmodel_perf %>% 
  filter(country %in% worst_fit$country) %>% 
  select(country, adj.r.squared)

# Visually inspect the fit of many models -----------------------------

augmented_models <- gap_models %>% 
  mutate(augmented = map(model, ~augment(.x))) %>%
  unnest(augmented)


augmented_models %>%
  filter(country == "Italy") %>% 
  ggplot(aes(x = year, y = life_expectancy)) + 
  geom_point() +
  geom_line(aes(y = .fitted), color = "red")+
  labs(title = 'Better Model')->b


augmented_models %>%
  filter(country == "Zambia") %>% 
  ggplot(aes(x = year, y = life_expectancy)) + 
  geom_point() +
  geom_line(aes(y = .fitted), color = "red")+
  labs(title = 'Worst Model')->a


grid.arrange(b,a)




best_augmented <- best_fit %>% 
  mutate(augmented = map(model, ~augment(.x))) %>% 
  unnest(augmented)

worst_augmented <- worst_fit %>% 
  mutate(augmented = map(model, ~augment(.x))) %>% 
  unnest(augmented)


best_augmented %>% 
  ggplot(aes(x = year)) +
  geom_point(aes(y =life_expectancy)) + 
  geom_line(aes(y = .fitted), color = "red") +
  facet_wrap(~country, scales = "free_y")


worst_augmented %>% 
  ggplot(aes(x = year)) +
  geom_point(aes(y = life_expectancy)) + 
  geom_line(aes(y = .fitted), color = "red") +
  facet_wrap(~country, scales = "free_y")





# Improve the fit of your models ------------------------------------------------------
# Multiple Linear Regression model

gap_fullmodels <- nested%>%
  na.omit()%>%
  mutate(model=map(data,~lm(formula = life_expectancy~ year, data=.x,)))


fullmodel_perf <- gap_fullmodels %>% 
  mutate(fit = map(model, ~glance(.x))) %>% 
  unnest(fit)


fullmodel_perf %>% 
  filter(country %in% worst_fit$country) %>% 
  select(country, adj.r.squared)


# Test and Validation models 

# for partitional set

gap_split<-initial_split(gapminder,prop = .8)

training_data<-training(gap_split)%>%
  na.omit()
testing_data<-testing(gap_split)%>%
  na.omit()


# dimension

dim(training_data)
dim(testing_data)

# Cross Validation
# V-fold cross-validation randomly splits the data into V groups of roughly equal size (called "folds")
cv_split <- vfold_cv(training_data, v = 3)

# Mapping and Validation

cv_data <- cv_split %>% 
  mutate(train = map(splits, ~training(.x),),
         validate = map(splits, ~testing(.x)))



cv_data%>%
  head()


cv_models_lm<-cv_data%>%
  mutate(model=map(train,~lm(life_expectancy~., data = .x)))

cv_models_lm

# Measuring Performance

# MAE: mean absolute error (MAE) is a measure of difference between two continuous variables. Assume X and Y are variables of paired observations that express the same phenomenon. (wiki)
# 1. Actual  Values
# 2. Predicted Values
# 3. Compare Actual and Predicted

# 1. Actual Values
cv_prep_model<-cv_models_lm%>%
  mutate(validation_actual=map(validate,~.x$life_expectancy))

cv_prep_model%>%
  head()



# 2. Predicted Values
cv_prep_lm <- cv_models_lm %>% 
  mutate(validate_actual = map(validate, ~.x$life_expectancy),
         validate_predicted = map2(model, validate, ~predict(.x, .y)))

# 3. Compare Values 

cv_eval_lm <- cv_prep_lm %>% mutate(validate_mae = map2_dbl(validate_actual, validate_predicted, ~mae(actual = .x, predicted = .y)))


cv_eval_lm$validate_mae
mean(cv_eval_lm$validate_mae)


# Building and tuning a random forest model

cv_models_rf <- cv_data %>% 
  mutate(model = map(train, ~ranger(formula = life_expectancy~., 
                                    data = .x, seed = 42)))
# Generate validate predictions for each model
cv_prep_rf <- cv_models_rf %>% 
  mutate(validate_predicted = map2(model, validate, 
                                   ~predict(.x, .y)$predictions))

cv_tune <- cv_data %>% 
  crossing(mtry = 1:5)


# Calculate validate MAE for each fold and mtry combination
cv_model_tunerf <- cv_tune %>% 
  mutate(model = map2(train, mtry, ~ranger(formula = life_expectancy~., 
                                           data = .x, mtry = .y)))
cv_eval_tunerf <- cv_model_tunerf %>% 
  mutate(validate_mae = map2_dbl(.x = validate_actual, .y = validate_predicted, ~mae(actual = .x, predicted = .y)))


# Calculate the mean validate_mae for each mtry used  
cv_eval_tunerf %>% 
  group_by(mtry) %>% 
  summarise(mean_mae = mean(validate_mae))


# Measuring the test performance


best_model <- ranger(formula = life_expectancy~., data = training_data,
                     mtry = 4, num.trees = 100, seed = 42)
test_actual <- testing_data$life_expectancy
test_predict <- predict(best_model, testing_data)$predictions


mae(test_actual, test_predict)



# Logistic regression models

set.seed(42)
data_split <- initial_split(attrition, prop = .75)
training_data <- training(data_split)
testing_data <- testing(data_split)



set.seed(42)
cv_split <- vfold_cv(training_data,v=5)

cv_data <- cv_split %>% 
  mutate(
    train = map(splits, ~training(.x)),
    validate = map(splits, ~testing(.x))
  )

cv_models_lr <- cv_data %>% 
  mutate(model = map(train, ~glm(formula = Attrition~., 
                                 data = .x, family = "binomial")))

# Evaluating classification models

# 1. Actual Clases
# 2. Predict Clases
# 3. Compare 1 & 2


# Extract first model

model <- cv_models_lr$model[[1]]

# Model Description 

model%>%
  summary()

# Validation first model
validate <- cv_models_lr$validate[[1]]

validate


# Prepare binary vector of actual Attrition values in validate
validate_actual <- cv_models_lr$validate == "Yes"
validate_prob <- predict(model, validate, type = "response")
validate_predicted <- validate_prob > 0.5
table(validate_actual, validate_predicted)
accuracy(validate_actual, validate_predicted)


# Compare the actual & predicted performance visually using a table
table(validate_actual, validate_predicted)

# Calculate the accuracy
accuracy(validate_actual, validate_predicted)

# Calculate the precision
precision(validate_actual, validate_predicted)

# Calculate the recall
recall(validate_actual, validate_predicted)


# This case is classnote Tidyverse 

# https://www.datacamp.com/courses/machine-learning-in-the-tidyverse





cv_prep_lr <- cv_models_lr %>% 
  mutate(
    validate_actual = map(validate, ~.x$Attrition == "Yes"),
    validate_predicted = map2(.x = model, .y = validate, ~predict(.x, .y, type = "response") > 0.5)
  )

cv_prep_lr





# Calculate the validate recall for each cross validation fold
cv_perf_recall <- cv_prep_lr %>% 
  mutate(validate_recall = map2_dbl(validate_actual, validate_predicted, 
                                    ~recall(actual = .x, predicted = .y)))


cv_perf_recall$validate_recall
mean(cv_perf_recall$validate_recall)


# Random forest for classification


cv_tune <- cv_data %>%
  crossing(mtry = c(2, 4, 8, 16)) 

cv_models_rf <- cv_tune %>% 
  mutate(model = map2(train, mtry, ~ranger(formula = Attrition~., 
                                           data = .x, mtry = .y,
                                           num.trees = 100, seed = 42)))


cv_models_rf
validate_actual <- validate$Attrition == "Yes"
validate_actual




cv_prep_rf <- cv_models_rf %>% 
  mutate(
    validate_actual = map(validate, ~.x$Attrition == "Yes"),
    validate_predicted = map2(.x = model, .y = validate, ~predict(.x, .y, type = "response")$predictions == "Yes")
  )


cv_perf_recall <- cv_prep_rf %>% 
  mutate(recall = map2_dbl(.x = validate_actual, .y = validate_predicted, ~recall(actual = .x, predicted = .y)))

# Calculate the mean recall for each mtry used  
cv_perf_recall %>% 
  group_by(mtry) %>% 
  summarise(mean_recall = mean(recall))



# Build the logistic regression model using all training data
best_model <- glm(formula = Attrition~., 
                  data = training_data, family = "binomial")

# Prepare binary vector of actual Attrition values for testing_data
test_actual <- testing_data$Attrition == "Yes"

# Prepare binary vector of predicted Attrition values for testing_data
test_predicted <- predict(best_model, testing_data, type = "response") > 0.5