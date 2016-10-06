#' pngplot
#' @export
pngplot <- function(p, name, h, w) {
  ggsave(p, filename = paste(name, "png", sep = "."), height = h, width = w, family = "Helvetica")
}

#' pdfplot
#' @export
pdfplot <- function(p, name, h, w) {
  ggsave(p, filename = paste(name, "pdf", sep = "."), height = h, width = w, family = "Helvetica")
}

#' dualplot
#' @export
dualplot <- function(p, name, h = 5, w = 8) {
  name <- paste("~/Development/londonauctions/inst/plots", name, sep = "/")
  pngplot(p, name, h, w)
  pdfplot(p, name, h, w)
  return(p)
}
