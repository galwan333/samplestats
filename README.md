## INTRO

The package here is called "samplestats" which includes a variety of functions. This package is very useful for individuals who need sample statistics for some sort of numerical data set. This package does not include functionality for categorical data. The purpose of creating sample statistics functions is that we can get a better overview of the data before peforming further anaylsis (such as regression, hypothesis testing, etc.). Samples statistics are good for interpretation and basic understanding of our data prior to more in depth mathematical investigation. Sample statistics (such as mean, standard deviation) are also required for more complex statistical calculations. So, having functions that are accurate and work efficiently are important. See help packages and the vignettes folder for more in depth anaylsis of these functions. The package includes 6 functions (iqr(), moments(), central_moments() , mode_finder(), percentiles(), coefficient_of_variation()) that give us the follow values respectively:

-IQR: Computes the interquatile range of the data. Can refer to the function iqr.R in the R folder. 

-Moment: Calculates the moment of a certain order (1,2,3,...). Can refer to the function moments.R in the R folder. 

-Central Moment: Calculates the central moment of a certain order (1,2,3,...). Can refer to the function central_moments.R in the R folder. 

-Mode: the most frequent observation(s) in the data. Can refer to the function mode_finder.R in the R folder. 

-Percentile: Gives the value in the data that is greater than or equal to a certain percentage of the data. See percentiles.R in the R folder for more details. Can refer to the function percentiles.R in the R folder. 

-Coefficient of variation: Gives the coefficient of variation of the data, which is how spread the data is around the mean of the data (quotient of the standard devitation of the data and the mean of the data). Can refer to the function coefficient_of_variation.R in the R folder. 

Note: For some persepctive, the first moment is the mean of the data, and the second central moment is the variance. Other moments and central moments require more in depth statisical investigation. 

## USAGE IN R

```{r}
devtools::install_github("galwan333/samplestats")
library(samplestats)
```

After you run the lines of code above you should be able to use the functions of the package on your local device. 

Below is some out of the functions with arbitrary data and parameters.

```{r}
dat = rnorm(1000, mean = 10000, sd = 1)
print(iqr(dat))
print(mode_finder(dat))
print(moments(dat, moment = 5))
print(percentiles(dat, 0.5))
print(central_moments(dat, 2))
print(coefficient_of_variation(dat))


```


## License

Licensed under MIT License. 

