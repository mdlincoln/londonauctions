#' London Paintings Auction Records
#'
#' A cleaned database of paintings records derived from the Getty Provenance Index.
#'
#' @format A data frame with 13 variables:
#' \describe{
#'  \item{cat_no}{Character. Auction catalogue number}
#'  \item{lot_no}{Character. Lot number}
#'  \item{auction_house}{Character. The auction house associated with the sale
#'  record}
#'  \item{date}{POSIXct. The date of the lot sale. Where a specific lot sale
#'  date is specified, that date is used. Where only a range of dates is
#'  specified, the earliest date is used.}
#'  \item{transaction_type}{Character. The transaction type.}
#'  \item{transaction_amt}{Numeric. Transaciton amount.}
#'  \item{year}{Integer.}
#'  \item{month}{Integer. Month of the year.}
#'  \item{week}{Integer. Week of the year.}
#'  \item{yday}{Integer. Day of the year.}
#'  \item{mday}{Integer. Day of the month.}
#'  \item{wday}{Integer. Day of the week.}
#'  \item{price_factor}{Integer. The lot's prince quintile compared to
#'   other sales from that same year.}
#' }
#'
"sales"

#' Royal Academy Exhibition Dates
#'
#' A table of the Royal Academy exhibiton start and end days, as compiled by RA archivist Mark Pomeroy
#' @format A data frame with 83 observations of 4 variables:
#' \describe{
#'  \item{exhib_start}{POSIXct. The date of the exhibition start}
#'  \item{exhib_end}{POSIXct. The date of the exhibition end}
#'  \item{exhib_start_day}{Integer. Day of the year the exhibition began.}
#'  \item{exhib_end_day}{Integer. Day of the year the exhibition ended.}
#'  \item{exhib_year}{Integer. Year of the exhibition.}
#' }
"ra_dates"

#' Parliament Dates
#'
#' A table of the starting and ending dates for Parliament, 1715-1831.
#' @format A data frame with 128 observations of 46 variables:
#' \describe{
#'  \item{par_start}{POSIXct. The date of the parliament start}
#'  \item{par_end}{POSIXct. The date of the parliament end}
#'  \item{par_start_year}{Integer. Year parliament began.}
#'  \item{par_end_year}{Integer. Year parliament ended.}
#'  \item{par_start_day}{Integer. Day of the year the parliament began.}
#'  \item{par_end_day}{Integer. Day of the year the parliament ended.}
#' }
"parliament_dates"

#' Getty Catalogue Digitization Progress
#'
#' A table describing the Getty's progress in digitizing their sales catalogs.
#' @format A data frame with 8393 observations of 4 variables:
#' \describe{
#'  \item{sale_begin}{POSIXct. The start date for the sale described by the catalog.}
#'  \item{sale_no}{Character. The sale catalog id number.}
#'  \item{is_input}{Logical. Has the catalog been input into the database yet?}
#'  \item{year}{Integer. Year derived from \code{sale_begin}}
#' }
#' @source Corresepondence with Christian Huemer, August 2015.
"getty_catalogs"
