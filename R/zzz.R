.onAttach <- function(libname, pkgname) {
  packageStartupMessage(paste0("This is the 'synapter' version ",
                               packageVersion("synapter"), ".\n",
                              "Read '?synapter' to get started.\n", sep=""))
  msg <- sprintf(
      "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.22")
  .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
  addVigs2WinMenu("synapter")
}

