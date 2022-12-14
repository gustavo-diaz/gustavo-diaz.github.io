###### COMPILE SLIDES ####
# Use inline for each separate file
# Run as a job to compile all at once

# Install packages if needed
# install.packages(c("xaringan", "xaringanthemer", "pagedown", "here"))

# Then run
pagedown::chrome_print(here::here("teaching/cp_intro/slides/1a_intro.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/1b_science.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/2_politics.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/3_states.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/4_ddconcept.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/5_ddecon.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/6_ddcult.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/7_transitions.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/8_versus.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/9_groups.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/10_democracies.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/11_elections.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/12_parties.Rmd"))
pagedown::chrome_print(here::here("teaching/cp_intro/slides/13_veto.Rmd"))


#This works as long as I don't care about interactive content nor incremental slides

