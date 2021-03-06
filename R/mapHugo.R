#' map genes or transcripts to updated HUGO symbols 
#'
#' @param   IDs       the identifiers to map
#' 
#' @param   useCache  boolean: use the cache? (TRUE, and should stay that way)
#' @param   byType   gene, or transcript  
#' @return  a list mapping IDs to HUGO symbols or HUGO transcript names 
#' 
#' @examples mapHugo("ENST00000003084")
#' 
#' @export
mapHugo <- function(IDs, useCache=TRUE, byType=c("transcript","gene")) { 
 
   type<-match.arg(byType,c("transcript","gene"))

  cache <- getHugoCache(useCache=useCache)
 
   if(byType=="transcript") {
    mappedHugo<-cache$transcript[intersect(IDs, names(cache$transcript))]
    }

    if(byType=="gene") {
   mappedHugo<-cache$gene[intersect(IDs, names(cache$gene))]
    }

 return(mappedHugo)
}
