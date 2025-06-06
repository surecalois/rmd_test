# ---- rmd_test ----

library(rmarkdown)

print("runing the rmd_test.r")
#input = "rmd_test_r.Rmd"


wow = yaml_front_matter(input)
print("============this is wow==============")
print(wow)
print("============wow is done==============")

wow$params$outfile = paste0(wow$params$outfile,basename(input),"_",wow$params$well,'.html')
render(
  input,
  output_file = paste0(basename(input),"_",wow$params$well,'.html'),
  params = wow$params
)

print("the rmd_test.r is finished")


