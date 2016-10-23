This R package contains the raw data and processing scripts used for the article: Matthew Lincoln and Abram Fox, "The Temporal Dimensions of the London Art Auction, 1780-1835", _British Art Studies_ no. 4, (Fall 2016).

## Installation

Required Software

R: freely available at <https://www.r-project.org/>
RStudio: an integrated development environment, free for individual use at <https://www.rstudio.com/>

To install this package, begin an R session within this directory.
On starting the R session, all the dependencies for this package, as well as this package itself, will be automatically installed from the included [packrat archive]

## Contents

`inst/extdata` contains the original data files from the Getty Research Institute, as well as the Royal Academiy Dates as transcribed from correspondece with Mark Pomeroy.

`vignettes/cleaning_data.Rmd` contains documented code for reading these original data files and parsing them into R data frames made available in the `data` directory.
Docuemntation of any of these data frames can be opened by using, e.g., `?sales`.
A list of all data frames available in this package can be seen by calling `?londonauctions`.

`vignettes/data_analysis.Rmd` contains all the code used to produce each of the plots and tables shown in the article.
When that code is run, it will save output plots to `inst/plots`.

---
Corresponding author: [Matthew Lincoln](http://matthewlincoln.net)
