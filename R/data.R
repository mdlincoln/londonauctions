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