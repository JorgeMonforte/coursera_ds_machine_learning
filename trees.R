
get_div0_columns <- function(df) {
  columns <- NULL
  for (cnum in seq(1,ncol(df))) {
    col <- df[,cnum]
    if (is.factor(col) & div0_level %in% levels(col))
      columns <- c(columns, cnum)
  }
  columns
}