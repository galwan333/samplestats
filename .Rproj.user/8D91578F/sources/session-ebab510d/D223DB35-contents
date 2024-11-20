#' Central moment calculator function
#'
#' @description
#' This is a function that computes a given moment based off user input (first moment by default)
#' @details
#' calculations are self-explanatory (see comments below), but we must ensure that the parameters are appropriate otherwise an error will be thrown
#'
#' @return The calculated moment in the form of a numeric value
#'
#' @param data Is a list/vector of only numeric values
#' @param moment Is the given moment that will be calculated (1 = first moment, 2= second moment, etc.) and is 1 if no parameter is passed
#'
#' @examples
#' central_moments(c(2,3,4,5,1,2,3,44,5,55,100,100))
#' central_moments(c(2,3,4,5,1,2,3,44,5,55,100,100), 4)
#'
#' @export
#'




central_moments = function(data, moment = 1){

  #ensures there is data being passed through
    if(length(data) == 0){
      stop("ERROR: Data is not valid. Make sure to include valid data")
    }

  #ensures the moment is non-negative (and not zero) and makes sure the moment parameter is a whole number
    if(moment <= 0 || moment %% 1 != 0){
      stop("ERROR: Please select a central moment that is a whole number greater than 0.")

    }

  #number of observations in the data
  n  = length(data)

  #ensures all of the data is numeric (this package only deals with numeric data)
  for(i in 1:n){
    if(!is.numeric(data[i])){
      stop("ERROR: make sure all of the data is numeric data")
    }
  }

  #makes sure there are enough observations to calculate the given central moment
  if(moment > n){
    stop("ERROR: Please include more data points. Cannot calculate nth central moment when there are less than n observations.")
  }

   #by definition, the first central moment is 0
   if(moment == 1){
    return(0)
   }


   #gets the mean of the data
    mean_data = sum(data)/n

    #initializes new variable for helping calculate the "denominator" correction factor
    denominator_correction_factor = n

   #calculates the "denominator" ( = (n-1)*(n-2)*...*(n-moment-1))
    for(i in 1:(moment-1)){
      denominator_correction_factor = denominator_correction_factor*(n-i)
    }

    # finds correction factor (= n^moment/"denominator")
    correction_factor = n**moment/denominator_correction_factor

    # finds the central moment
    central_moment_result = sum((data - mean_data)**moment)/(n) * correction_factor

    return(central_moment_result)


  }

