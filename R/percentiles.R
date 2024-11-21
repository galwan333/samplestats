#' Percentile finder function
#'
#' @description
#' This is a function find a given percentile based off the users inputted data
#' @details
#' Is the percentile in the data that we want to find and is 0.5 (median) if no parameter is passed
#'
#' @return The numerical value of the percentile
#'
#' @param data Is a list/vector of only numeric values
#' @param percentile Is the percentile in the data that we want to find and is 0.5 (median) if no parameter is passed
#'
#' @examples
#' percentiles(c(2:200))
#' percentiles(c(2:200), 0.9)
#'
#' @export
#'

percentiles = function(data, percentile = 0.5){

  #ensures there is enough data being passed through
  if(length(data) <= 1){
    stop("Data is not valid. Make sure to include at data with at least 1 observation")
  }

  #ensures the percentile value is valid
  if( percentile < 0 ||  percentile > 1){
    stop("Please selct a percentile between 0 and 1.")
  }

  #sorts the data in numeric order
  data_sorted = sort(data)

  #gets the number of observations in the data
  n = length(data)


  #index of the percentile within the sorted data
  percentile_postion = 1 + percentile *(n-1)

  if(percentile_postion %% 1 == 0 ){
    #if the index is a whole number simply return the corresponding value in the sorted list
    return(data_sorted[percentile_postion])
  }else{

    #if the index is a decimal

    #find the whole number indices above and below the percentile index
    index_above = ceiling(percentile_postion)
    index_below = index_above - 1

    #finds the value of the corresponding percentile within the sorted data
    percentile_point = percentile * (data_sorted[index_above] - data_sorted[index_below]) + data_sorted[index_below]

    return(percentile_point)
  }


}
