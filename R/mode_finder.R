#' Mode finder function
#'
#' @description
#' This is a function that finds the mode (the most frequent observation(s)) of a list of data
#'
#' @details
#' calculations are self-explanatory (see comments below), but we must ensure that the parameters are appropriate otherwise an error will be thrown
#'
#' @return The calculated moment in the form of a numeric value
#'
#' @param data Is a list/vector of only numeric values
#'
#' @examples
#' mode_finder(c(1,2,3,3,1,3,44,6))
#'
#' @export
#'
mode_finder = function(data){

  # ensures there is data being passed through
  if(length(data) == 0){
    stop("ERROR: Data is not valid. Make sure to include valid data")
  }

  n = length(data)


  # creates a table of number of observations per unique value
  table_data = table(data)

  # indicates the the maximum number of observations amongst the unique values is
  max_occurances = max(table_data)

  # sorts the original data in numeric order
  sorted_data = sort(unique(data))

  # extracts all of the mode(s) from the data
  mode_values = sorted_data[which(table_data == max_occurances)]
  return(mode_values)

}

