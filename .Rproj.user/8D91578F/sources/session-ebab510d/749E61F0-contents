#' IQR calculator function
#'
#' @description
#' This is a function finds the IQR of the data
#' @details
#' We call the "percentiles" function within this package to find the iqr = 3rd quantile - 1st quantile
#'
#' @return The IQR of the data which is a numerical value
#'
#' @param data Is a list/vector of only numeric values
#'
#' @examples
#' iqr(c(4,5,3,7,6,4,33,2,3,4))
#'
#' @export
#'

iqr = function(data){

  #since we are calling other functions within this package, we don't need to duplicate code to check for errors

  #uses percentiles function within this back to find the iqr
  iqr_result = percentiles(data, 0.75) - percentiles(data, 0.25)

  return(iqr_result)

}

