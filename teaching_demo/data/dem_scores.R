# Download and save democracy scores with more recent year
# remotes::install_github("xmarquez/democracyData")
# devtools::install_github("vdeminstitute/vdemdata")
library(tidyverse)
library(democracyData)
library(vdemdata)
library(countrycode)

# FH
fh = download_fh(verbose = FALSE)

fh = fh %>% filter(year == 2020) %>% select(fh_country, year, fh_total, fh_total_reversed)

# Polity
polity = download_polity_annual(verbose = FALSE)

polity = polity %>% filter(year == 2018) %>% select(polity_annual_country, year, polity)

# DD included in package
dd = pacl %>% filter(year == 2008) %>% select( pacl_country, year, dd = democracy)

# VDEM
vdem = vdem

vdem = vdem %>% 
  select(country_name, year, v2x_polyarchy, v2x_libdem, v2x_partipdem,
          v2x_delibdem, v2x_egaldem) %>% 
  filter(year == 2020)

# Create iso3c variables
fh$iso3c = countrycode(fh$fh_country, origin = "country.name", destination = "iso3c")

polity$iso3c = countrycode(polity$polity_annual_country, origin = "country.name", destination = "iso3c")

dd$iso3c = countrycode(dd$pacl_country, origin = "country.name", destination = "iso3c")

vdem$iso3c = countrycode(vdem$country_name, origin = "country.name", destination = "iso3c")

# Save four datasets
# keep as separate variables to avoid listwise deletion
save(fh, polity, vdem, dd, file = "data/dem_scores.RData")
