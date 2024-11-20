#' Coefficient of variation calculator function
#'
#' @description
#' This is a function that calculates the coefficient of variation (sd/mean * 100) of a list of data
#'
#' @details
#' calculations are self-explanatory (see comments below), but we must ensure that the parameters are appropriate otherwise an error will be thrown
#'
#' @return The calculated coefficient of variation
#'
#' @param data Is a list/vector of only numeric values
#'
#' @examples
#' coefficient_of_variation(c(1:100))
#'
#' @export
#'
coefficient_of_variation = function(data){

  #since we are calling other functions within this package, we don't need to duplicate code to check for errors

  #uses moments function within this package to find the mean
  mean_of_data = moments(data, 1)

  #uses central moments function within this package to find the sample variance
  sample_sd = sqrt(central_moments(data,2))

  #ensures the mean isn't 0
  if(mean_of_data == 0){
    stop("ERROR: Cannot calculate as the mean of the data is 0.")

  }

  #calculates coefficient of variation in terms of a percentage
  cv = sample_sd/ mean_of_data*100

  return(cv)

}

