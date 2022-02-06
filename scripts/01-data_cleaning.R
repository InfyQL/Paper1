#### Preamble ####
# Purpose: Clean the data from opendatatoronto
# Author: Jonathan Goodwin
# Data: 29 January 2021
# Contact: jon.goodwin@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(opendatatoronto)
library(tidyverse)
library(dplyr)

### Data Download ###

# Taken from https://open.toronto.ca/dataset/covid-19-cases-in-toronto/

# get all resources for this package
resources <- list_package_resources("64b54586-6180-4485-83eb-81e8fae3b8fe")

# load the first datastore resource as a sample
covid.data <- 
  resources %>%
  get_resource()

### Save data as csv ###

write_csv(covid.data, "inputs/data/covid.data.csv")
