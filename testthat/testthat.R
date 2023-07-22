library(testthat)
library(visplots)

test_check("visplots") # Load R package

devtools::test()
devtools::check()
