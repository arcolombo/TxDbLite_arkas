#' helper function for findDupes
#'
#' @param fastaFile the target FASTA 
#' 
#' @return a data.frame with the contig entry names and the FASTA file of origin
#' @importFrom GenomeInfoDb seqlevels seqnames
#' @importFrom Rsamtools scanFaIndex FaFile
#' @export
chrs <- function(fastaFile) {
  indexIfNoneFound(fastaFile)
  idx <- scanFaIndex(FaFile(fastaFile))
  data.frame(seqnames=seqlevels(idx), fastaFile=rep(fastaFile, length(chrs)))
}
