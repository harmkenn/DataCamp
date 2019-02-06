---
title: "Building Web Apps with Shiny Module 4"
author: "Ken Harmon"
date: "2019 February 06"
output:
  html_document:  
    keep_md: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---

# {.tabset .tabset-fade}



## Background

https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1?ex=1

https://rpubs.com/Seetz/T-31052017

https://github.com/datacamp/courses-intro-to-r/blob/master/chapter6.Rmd

## Module 1 


```r
# Calculate 3 + 4
3 + 4
```

```
## [1] 7
```

```r
# Calculate 6 + 12
6+12
```

```
## [1] 18
```

```r
# An addition
5 + 5 
```

```
## [1] 10
```

```r
# A subtraction
5 - 5 
```

```
## [1] 0
```

```r
# A multiplication
3 * 5
```

```
## [1] 15
```

```r
 # A division
(5 + 5) / 2 
```

```
## [1] 5
```

```r
# Exponentiation
2^5
```

```
## [1] 32
```

```r
# Modulo
28 %% 6
```

```
## [1] 4
```

```r
# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x
```

```
## [1] 42
```

```r
# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples
```

```
## [1] 5
```

```r
# Assign a value to the variables my_apples and my_oranges
my_apples <- 5
my_oranges <-6

# Add these two variables together
my_apples+my_oranges
```

```
## [1] 11
```

```r
# Create the variable my_fruit
my_fruit<-my_apples+my_oranges

# Assign a value to the variable my_apples
my_apples <- 5 

# Fix the assignment of my_oranges
my_oranges <- 6

# Create the variable my_fruit and print it out
my_fruit <- my_apples + my_oranges 
my_fruit
```

```
## [1] 11
```

```r
# Change my_numeric to be 42
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- FALSE

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)
```

```
## [1] "numeric"
```

```r
# Check class of my_character
class(my_character)
```

```
## [1] "character"
```

```r
# Check class of my_logical
class(my_logical)
```

```
## [1] "logical"
```

## Vector


```r
# Define the variable vegas
vegas <- "Go!"

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <- c(TRUE,FALSE,TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24,-50,100,-350,10)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vectors
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
 
# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <- days_vector  
names(roulette_vector) <- days_vector

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector+B_vector
  
# Print out total_vector
total_vector
```

```
## [1] 5 7 9
```

```r
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector+roulette_vector

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- total_poker+total_roulette

# Print out total_week
  total_week
```

```
## [1] -84
```

```r
  # Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Calculate total gains for poker and roulette
total_poker <-sum(poker_vector)
total_roulette <-sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette 
total_poker>total_roulette
```

```
## [1] TRUE
```

```r
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2,3,4)]

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]
  
# Calculate the average of the elements in poker_start
mean(poker_start)
```

```
## [1] 36.66667
```

```r
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?
selection_vector <- poker_vector>0
  
# Print out selection_vector
selection_vector
```

```
##    Monday   Tuesday Wednesday  Thursday    Friday 
##      TRUE     FALSE      TRUE     FALSE      TRUE
```

```r
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on roulette?
selection_vector <-roulette_vector>0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
```

## Matrix


```r
# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)
```

```
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9
```

```r
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
star_wars_matrix
```

```
##         [,1]  [,2]
## [1,] 460.998 314.4
## [2,] 290.475 247.9
## [3,] 309.306 165.8
```

```r
# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix)<-region

# Name the rows with titles
rownames(star_wars_matrix)<-titles

# Print out star_wars_matrix
star_wars_matrix
```

```
##                              US non-US
## A New Hope              460.998  314.4
## The Empire Strikes Back 290.475  247.9
## Return of the Jedi      309.306  165.8
```

```r
# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)
all_wars_matrix
```

```
##                              US non-US worldwide_vector
## A New Hope              460.998  314.4          775.398
## The Empire Strikes Back 290.475  247.9          538.375
## Return of the Jedi      309.306  165.8          475.106
```

```r
# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
```

```
##                              US non-US
## A New Hope              460.998  314.4
## The Empire Strikes Back 290.475  247.9
## Return of the Jedi      309.306  165.8
```

```r
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/intro_to_r/all_wars_matrix.RData"))
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi", "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
box_office_all2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
movie_names2 <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
col_titles <- c("US","non-US")
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7, 4, 4, 4.5, 4.5, 4.9, 4.9), nrow = 6, byrow = TRUE, dimnames = list(movie_names,col_titles))
star_wars_matrix2 <- matrix(box_office_all2, nrow=3, byrow = TRUE, dimnames = list(movie_names2, col_titles))
star_wars_matrix2 
```

```
##                         US non-US
## The Phantom Menace   474.5  552.5
## Attack of the Clones 310.7  338.7
## Revenge of the Sith  380.3  468.5
```

```r
# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)
all_wars_matrix
```

```
##                              US non-US
## A New Hope              460.998  314.4
## The Empire Strikes Back 290.475  247.9
## Return of the Jedi      309.306  165.8
## The Phantom Menace      474.500  552.5
## Attack of the Clones    310.700  338.7
## Revenge of the Sith     380.300  468.5
```

```r
# all_wars_matrix is available in your workspace
all_wars_matrix
```

```
##                              US non-US
## A New Hope              460.998  314.4
## The Empire Strikes Back 290.475  247.9
## Return of the Jedi      309.306  165.8
## The Phantom Menace      474.500  552.5
## Attack of the Clones    310.700  338.7
## Revenge of the Sith     380.300  468.5
```

```r
# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
  
# Print out total_revenue_vector
total_revenue_vector
```

```
##       US   non-US 
## 2226.279 2087.800
```

```r
# all_wars_matrix is available in your workspace
all_wars_matrix
```

```
##                              US non-US
## A New Hope              460.998  314.4
## The Empire Strikes Back 290.475  247.9
## Return of the Jedi      309.306  165.8
## The Phantom Menace      474.500  552.5
## Attack of the Clones    310.700  338.7
## Revenge of the Sith     380.300  468.5
```

```r
# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
  
# Average non-US revenue
mean(non_us_all)
```

```
## [1] 347.9667
```

```r
# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
  
# Average non-US revenue for first two movies
mean(non_us_some)
```

```
## [1] 281.15
```

```r
# all_wars_matrix is available in your workspace
all_wars_matrix
```

```
##                              US non-US
## A New Hope              460.998  314.4
## The Empire Strikes Back 290.475  247.9
## Return of the Jedi      309.306  165.8
## The Phantom Menace      474.500  552.5
## Attack of the Clones    310.700  338.7
## Revenge of the Sith     380.300  468.5
```

```r
# Estimate the visitors
visitors <- all_wars_matrix/5
  
# Print the estimate to the console
visitors
```

```
##                              US non-US
## A New Hope              92.1996  62.88
## The Empire Strikes Back 58.0950  49.58
## Return of the Jedi      61.8612  33.16
## The Phantom Menace      94.9000 110.50
## Attack of the Clones    62.1400  67.74
## Revenge of the Sith     76.0600  93.70
```

```r
# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
```

```
##                              US non-US
## A New Hope              460.998  314.4
## The Empire Strikes Back 290.475  247.9
## Return of the Jedi      309.306  165.8
## The Phantom Menace      474.500  552.5
## Attack of the Clones    310.700  338.7
## Revenge of the Sith     380.300  468.5
```

```r
ticket_prices_matrix
```

```
##                          US non-US
## A New Hope              5.0    5.0
## The Empire Strikes Back 6.0    6.0
## Return of the Jedi      7.0    7.0
## The Phantom Menace      4.0    4.0
## Attack of the Clones    4.5    4.5
## Revenge of the Sith     4.9    4.9
```

```r
# Estimated number of visitors
visitors <- all_wars_matrix/ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
mean(us_visitors)
```

```
## [1] 75.01339
```

## Factors


```r
# Assign to the variable theory what this chapter is about!
theory <- "factors for categorical variables"

# Gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert gender_vector to a factor
factor_gender_vector <- factor(gender_vector)

# Print out factor_gender_vector
factor_gender_vector
```

```
## [1] Male   Female Female Male   Male  
## Levels: Female Male
```

```r
# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector
```

```
## [1] Elephant Giraffe  Donkey   Horse   
## Levels: Donkey Elephant Giraffe Horse
```

```r
# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector
```

```
## [1] High   Low    High   Low    Medium
## Levels: Low < Medium < High
```

```r
# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <-

factor_survey_vector

# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector
```

```
## [1] Male   Female Female Male   Male  
## Levels: Female Male
```

```r
# Generate summary for survey_vector
summary(survey_vector)
```

```
##    Length     Class      Mode 
##         5 character character
```

```r
# Generate summary for factor_survey_vector
summary(factor_survey_vector)
```

```
## Female   Male 
##      2      3
```

```r
# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")

# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female
```

```
## [1] NA
```

```r
# Create speed_vector
speed_vector <- c("fast","slow","slow","fast","insane")

# Create speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector, ordered=TRUE, levels = c("slow" , "fast" , "insane"))

# Print factor_speed_vector
factor_speed_vector
```

```
## [1] fast   slow   slow   fast   insane
## Levels: slow < fast < insane
```

```r
summary(factor_speed_vector)
```

```
##   slow   fast insane 
##      2      2      1
```

```r
# Create factor_speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "fast", "insane"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2>da5
```

```
## [1] FALSE
```

## Data Frames


```r
# Print out built-in R data frame
mtcars 
```

```
##                      mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
## Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
## Duster 360          14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
## Merc 240D           24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
## Merc 230            22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
## Merc 280            19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
## Merc 280C           17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
## Merc 450SE          16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
## Merc 450SL          17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
## Merc 450SLC         15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
## Cadillac Fleetwood  10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
## Lincoln Continental 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
## Chrysler Imperial   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
## Fiat 128            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
## Honda Civic         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
## Toyota Corolla      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
## Toyota Corona       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
## Dodge Challenger    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
## AMC Javelin         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
## Camaro Z28          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
## Pontiac Firebird    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
## Fiat X1-9           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
## Porsche 914-2       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
## Lotus Europa        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
## Ford Pantera L      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
## Ferrari Dino        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
## Maserati Bora       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
## Volvo 142E          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2
```

```r
# Call head() on mtcars
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

```r
# Investigate the structure of mtcars
str(mtcars)
```

```
## 'data.frame':	32 obs. of  11 variables:
##  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
##  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
##  $ disp: num  160 160 108 258 360 ...
##  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
##  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
##  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
##  $ qsec: num  16.5 17 18.6 19.4 17 ...
##  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
##  $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
##  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
##  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

```r
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation , rings)

# Check the structure of planets_df
str(planets_df)
```

```
## 'data.frame':	8 obs. of  5 variables:
##  $ name    : Factor w/ 8 levels "Earth","Jupiter",..: 4 8 1 3 2 6 7 5
##  $ type    : Factor w/ 2 levels "Gas giant","Terrestrial planet": 2 2 2 2 1 1 1 1
##  $ diameter: num  0.382 0.949 1 0.532 11.209 ...
##  $ rotation: num  58.64 -243.02 1 1.03 0.41 ...
##  $ rings   : logi  FALSE FALSE FALSE FALSE TRUE TRUE ...
```

```r
# The planets_df data frame from the previous exercise is pre-loaded

# Select first 5 values of diameter column
planets_df[1:5,"diameter"]
```

```
## [1]  0.382  0.949  1.000  0.532 11.209
```

```r
# planets_df is pre-loaded in your workspace

# Select the rings variable from planets_df
rings_vector <- planets_df$rings
  
# Print out rings_vector
rings_vector
```

```
## [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
```

```r
# planets_df and rings_vector are pre-loaded in your workspace

# Adapt the code to select all columns for planets with rings
planets_df[rings_vector, ]
```

```
##      name      type diameter rotation rings
## 5 Jupiter Gas giant   11.209     0.41  TRUE
## 6  Saturn Gas giant    9.449     0.43  TRUE
## 7  Uranus Gas giant    4.007    -0.72  TRUE
## 8 Neptune Gas giant    3.883     0.67  TRUE
```

```r
# planets_df is pre-loaded in your workspace

# Select planets with diameter < 1
subset(planets_df, diameter < 1)
```

```
##      name               type diameter rotation rings
## 1 Mercury Terrestrial planet    0.382    58.64 FALSE
## 2   Venus Terrestrial planet    0.949  -243.02 FALSE
## 4    Mars Terrestrial planet    0.532     1.03 FALSE
```

```r
# Play around with the order function in the console

# planets_df is pre-loaded in your workspace

# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]
```

```
##      name               type diameter rotation rings
## 1 Mercury Terrestrial planet    0.382    58.64 FALSE
## 4    Mars Terrestrial planet    0.532     1.03 FALSE
## 2   Venus Terrestrial planet    0.949  -243.02 FALSE
## 3   Earth Terrestrial planet    1.000     1.00 FALSE
## 8 Neptune          Gas giant    3.883     0.67  TRUE
## 7  Uranus          Gas giant    4.007    -0.72  TRUE
## 6  Saturn          Gas giant    9.449     0.43  TRUE
## 5 Jupiter          Gas giant   11.209     0.41  TRUE
```

## Lists


```r
# Just click the 'Submit Answer' button.

# Click 'Submit Answer' to start the first exercise on lists.

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector,my_matrix,my_df)
my_list
```

```
## [[1]]
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## [[2]]
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9
## 
## [[3]]
##                    mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
## Duster 360        14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
## Merc 240D         24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
## Merc 230          22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
## Merc 280          19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
```

```r
# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(vec=my_vector, mat=my_matrix, df=my_df)

# Print out my_list
my_list
```

```
## $vec
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $mat
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9
## 
## $df
##                    mpg cyl  disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
## Duster 360        14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
## Merc 240D         24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
## Merc 230          22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
## Merc 280          19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
```

```r
# The variables mov, act and rev are available

mov <- "The Shining"
act      <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
sources     <- c("IMDb1","IMDb2","IMDb3")
comments    <- c("Best Horror Film I Have Ever Seen","A truly brilliant and scary film from Stanley Kubrick","A masterpiece of psychological horror")
scores      <- c(4.5,4,5)
rev     <- data.frame(scores, sources, comments)
rm(scores, sources, comments)


# Finish the code to build shining_list
shining_list <- list(moviename = mov,actors=act,reviews=rev)
shining_list
```

```
## $moviename
## [1] "The Shining"
## 
## $actors
## [1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"     
## [4] "Scatman Crothers" "Barry Nelson"    
## 
## $reviews
##   scores sources                                              comments
## 1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
## 2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
## 3    5.0   IMDb3                 A masterpiece of psychological horror
```

```r
# shining_list is already pre-loaded in the workspace

# Print out the vector representing the actors
shining_list$actors
```

```
## [1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"     
## [4] "Scatman Crothers" "Barry Nelson"
```

```r
# Print the second element of the vector representing the actors
shining_list$actors[2]
```

```
## [1] "Shelley Duvall"
```

```r
# shining_list, the list containing movie name, actors and reviews, is pre-loaded in the workspace

# We forgot something; add the year to shining_list
shining_list_full <- c(shining_list, year=1980)

# Have a look at shining_list_full
shining_list_full
```

```
## $moviename
## [1] "The Shining"
## 
## $actors
## [1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"     
## [4] "Scatman Crothers" "Barry Nelson"    
## 
## $reviews
##   scores sources                                              comments
## 1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
## 2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
## 3    5.0   IMDb3                 A masterpiece of psychological horror
## 
## $year
## [1] 1980
```

```r
str(shining_list_full)
```

```
## List of 4
##  $ moviename: chr "The Shining"
##  $ actors   : chr [1:5] "Jack Nicholson" "Shelley Duvall" "Danny Lloyd" "Scatman Crothers" ...
##  $ reviews  :'data.frame':	3 obs. of  3 variables:
##   ..$ scores  : num [1:3] 4.5 4 5
##   ..$ sources : Factor w/ 3 levels "IMDb1","IMDb2",..: 1 2 3
##   ..$ comments: Factor w/ 3 levels "A masterpiece of psychological horror",..: 3 2 1
##  $ year     : num 1980
```



