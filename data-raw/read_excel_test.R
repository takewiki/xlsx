getwd();

library(readxl);

files <-readxl::excel_sheets("./data-raw/file/ptc_test.xlsx");

res <-lapply(files,function(file){
  
 as.data.frame(read_excel("data-raw/file/ptc_test.xlsx", 
                         sheet = file))
  
  
})
names(res) <- files

res;


