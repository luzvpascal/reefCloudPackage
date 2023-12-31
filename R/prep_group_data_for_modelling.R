#' @title Group data for model
#' @description Prepare fGROUP for modelling
#' @param data data set
#' @param GROUP string, name of group
#' @return grouped data, arranged by Tier4, Tier5, Site, Transect, and descending fYEAR
#' @examples prep_group_data_for_modelling(data, GROUP)
#' @export
prep_group_data_for_modelling <- function(data, GROUP) {
  reefCloudPackage::ReefCloud_tryCatch({
        ## ---- data_sub
        data.grp <- data %>%
            filter(fGROUP == GROUP) %>%
            droplevels() %>%
            mutate(
                Tier5 = factor(Tier5),
                Tier4 = factor(Tier4),
                Tier3 = factor(Tier3),
                Tier2 = factor(Tier2),
                P_CODE = factor(P_CODE),
                Site = factor(paste(Tier5, SITE_NO)),
                Transect = factor(paste(Site, TRANSECT_NO))) %>%
            arrange(Tier4, Tier5, Site, Transect, desc(as.numeric(as.character(fYEAR)))) %>%
            mutate(fYEAR = factor(fYEAR, levels=unique(fYEAR)))
        ## ----end
    },
    logFile=LOG_FILE,
    Category='--Modelling fitting routines--',
    msg=paste0('Prepare ', stringr::str_to_title(GROUP),' sub data for modelling'),
    return=NULL,
    stage = paste0("STAGE", CURRENT_STAGE),
    item = "SubsetGroups"
    )
    return(data.grp)
}
