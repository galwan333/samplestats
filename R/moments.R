#' Moment calculator function
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
#' moments(c(2,3,4,5,1,2,3,44,5,55,100,100))
#' moments(c(2,3,4,5,1,2,3,44,5,55,100,100), 4)
#'
#' @export
#'



moments = function(data, moment = 1){

  #ensures there is data being passed through
  if(length(data) == 0){
    stop("ERROR: Data is not valid. Make sure to include at data with at least 1 observation")
  }

  #ensures that the value of the moment parameter is valid
  if(moment <= 0 || moment %% 1 != 0){
    stop("ERROR: Please select a moment that is a whole number greater than 0.")

  }

    #number of observations in the data
    n  = length(data)

    #ensures all of the data is numeric (this package only deals with numeric data)
    for(i in 1:n){
      if(!is.numeric(data[i])){
        stop("ERROR: make sure all of the data is numeric data")
      }
    }

    #finds the value of the corresponding moment based off the parameter
    moment_result = sum(data**moment)/n

    return(moment_result)
}
