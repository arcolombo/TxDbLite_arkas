###
### Load any db objects whenever the package is loaded.
###
.onLoad <- function(libname, pkgname)
{
  ns <- asNamespace(pkgname)
  path <- system.file("extdata", package=pkgname, lib.loc=libname)
  files <- dir(path)
  for(i in seq_len(length(files))){
   # db <- RepDbLite(system.file("extdata", files[[i]], package=pkgname,
    #                            lib.loc=libname))
    db<-RepDbLite(files[[i]],path)
    objname <- sub(".sqlite$","",files[[i]])
    assign(objname, db, envir=ns)
    namespaceExport(ns, objname)
  }
}

