
#' @title Function 
#' @description Description 
#' @param parameters description
#' @return returned arguments description
#' @examples examples 
#' @export
meshINLA_tier4 <- function(cellmeans.full) {
  load(file=paste0(DATA_PATH,'primary/tiers.lookup.RData'))
  cellmeans.full.tier4 <- cellmeans.full %>%
    left_join(tiers.lookup) %>%
    group_by(Tier4, fYEAR, Rep) %>%
    mutate(wt = reef_area / sum(reef_area)) %>%
    summarise(value = sum(value * wt)) %>%
    suppressMessages()
  return(cellmeans.full.tier4)
}
