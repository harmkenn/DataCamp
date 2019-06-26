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



## Original Dataset


```r
# Use this R-Chunk to clean & wrangle your data!
```

## Data Visualization






## Conclusions

