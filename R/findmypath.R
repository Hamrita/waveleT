#' BWEGEGEK!
#'
#' This function allows you to express your love of cats.
#' @param love Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' cat_function()

findmypath=function(dir,file){
  path=system.file(dir,file,package="waveleT")
  if(dir==""){path=file}
  if(path==""){path=dir}
  return(path)
}