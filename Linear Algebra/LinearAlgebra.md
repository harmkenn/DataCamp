---
title: "Linear Algera for Data Science in R"
author: "Ken Harmon"
date: "2019 June 26"
output:
  html_document:  
    keep_md: true
    code_folding: hide
    fig_height: 6
    fig_width: 12
    fig_align: 'center'
---

# {.tabset .tabset-fade}






```r
# Use this R-Chunk to import all your datasets!
```

## Intro to Linear Algebra

https://campus.datacamp.com/courses/linear-algebra-for-data-science-in-r/introduction-to-linear-algebra?ex=1

### Motivations

```r
x <- rep(1, 4)
y <- seq(2, 8, by = 2)
z <- c(1, 5, -2, 4)
z[3] <- 7

matrix(2, 3, 2)
```

```
##      [,1] [,2]
## [1,]    2    2
## [2,]    2    2
## [3,]    2    2
```

```r
matrix(c(1, -1, 2, 3, 2, -2), nrow = 2, ncol = 3, byrow = TRUE)
```

```
##      [,1] [,2] [,3]
## [1,]    1   -1    2
## [2,]    3    2   -2
```

```r
matrix(c(1, -1, 2, 3, 2, -2), nrow = 2, ncol = 3, byrow = FALSE)
```

```
##      [,1] [,2] [,3]
## [1,]    1    2    2
## [2,]   -1    3   -2
```
### Creating Vecors in R


```r
# Creating three 3's and four 4's, respectively
rep(3, 3)
```

```
## [1] 3 3 3
```

```r
rep(4, 4)
```

```
## [1] 4 4 4 4
```

```r
# Creating a vector with the first three even numbers and the first three odd numbers
seq(2, 6, by = 2)
```

```
## [1] 2 4 6
```

```r
seq(1, 5, by = 2)
```

```
## [1] 1 3 5
```

```r
# Re-creating the previous four vectors using the 'c' command
c(3, 3, 3)
```

```
## [1] 3 3 3
```

```r
c(4, 4, 4, 4)
```

```
## [1] 4 4 4 4
```

```r
c(2, 4, 6)
```

```
## [1] 2 4 6
```

```r
c(1, 3, 5)
```

```
## [1] 1 3 5
```
### The Algebra of Vectors


```r
x <- seq(1,7,by=1)
y <- seq(2,14, by=2)
z <- c(1,1,2)

# Add x to y and print
print(x + y)
```

```
## [1]  3  6  9 12 15 18 21
```

```r
# Multiply z by 2 and print
print(2 * z)
```

```
## [1] 2 2 4
```

```r
# Multiply x and y by each other and print
print(x * y)
```

```
## [1]  2  8 18 32 50 72 98
```

```r
# Add x to z, if possible, and print
print(x + z)
```

```
## [1] 2 3 5 5 6 8 8
```



## Original Dataset


```r
# Use this R-Chunk to clean & wrangle your data!
```

## Data Visualization






## Conclusions

