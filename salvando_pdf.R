remotes::install_github("jhelvy/xaringanBuilder")
library(xaringanBuilder)
remotes::install_github("jhelvy/renderthis@v0.0.9")
remotes::install_github('rstudio/chromote')

build_pdf("ufc.Rmd", complex_slides = TRUE)

install.packages("digest", type="source")
Sys.setenv(R_INSTALL_STAGED = FALSE)
library(renderthis)
renderthis::to_pdf(from = "ufc.html",
                   to = "apresentacoes_ufc.pdf",complex_slides=TRUE)


remotes::install_github('rstudio/pagedown')
pagedown::chrome_print("apresentacoes.html")
