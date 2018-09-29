#' 将多个Excel页签读取到一个列表对象中
#'
#' @param fileName 文件名,如xxxx.xlsx，可包含多个页签
#'
#' @return 返回列表对象
#' @export
#' @import readxl
#'
#' @examples readExcelSheetsIntoList
readExcelSheetsIntoList <- function(fileName="./data-raw/file/ptc_test.xlsx") {
  #library(readxl);
  sheets <-readxl::excel_sheets(fileName);
  res <-lapply(sheets,function(sheet){
    
    as.data.frame(read_excel(fileName, 
                             sheet = sheet))
  })
  names(res) <- sheets
  res;
}