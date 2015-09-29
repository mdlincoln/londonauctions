#' pngplot
pngplot <- function(p, name, h, w) {
  ggsave(p, filename = paste(name, "png", sep = "."), height = h, width = w)
}

#' pdfplot
pdfplot <- function(p, name, h, w) {
  ggsave(p, filename = paste(name, "pdf", sep = "."), height = h, width = w)
}

#' dualplot
dualplot <- function(p, name, h = 5, w = 8) {
  name <- paste("~/Development/londonauctions/inst/plots", name, sep = "/")
  pngplot(p, name, h, w)
  pdfplot(p, name, h, w)
  return(p)
}
