###### COMPILE SLIDES ####
# Use inline for each separate file
# Run as a job to compile all at once

# Install packages if needed
# install.packages(c("xaringan", "xaringanthemer", "pagedown", "here"))

# Then run
pagedown::chrome_print(here::here("teaching/cp_intro/slides/1a_intro.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/1b_science.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/2a_politics.Rmd"))

#This works as long as I don't care about interactive content nor incremental slides

