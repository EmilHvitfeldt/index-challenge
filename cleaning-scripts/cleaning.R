library(tidyverse)

read_csv("data-raw/big-mac-index_2018_raw.csv") %>%
  filter(date == "7/1/18") %>%
  select(name, GDP_dollar) %>%
  write_csv("data-clean/big-mac-index_2018_clean.csv")

readxl::read_xlsx("data-raw/corruption-perception-index_2017_raw.xlsx", skip = 2) %>%
  select(Country, `CPI Score 2017`) %>%
  write_csv("data-clean/corruption-perception-index_2017_clean.csv")

readxl::read_xlsx("data-raw/fragile_states_index_2018_raw.xlsx") %>%
  select(Country, Total) %>%
  write_csv("data-clean/fragile_states_index_2018_clean.csv")

readxl::read_xlsx("data-raw/gay-happiness-index_2015_raw.xlsx", skip = 3) %>%
  filter(!is.na(Antigay)) %>%
  select(Countries, `GHI Score \r\n(Public Opinion \r\n+ Public Behavior \r\n+ Life Satisfaction / 3)`) %>%
  write_csv("data-clean/gay-happiness-index_2015_clean.csv")

readxl::read_xlsx("data-raw/global_gender_gap_index_2016_raw.xlsx", sheet = 2, skip = 2) %>%
  select(Country, score) %>%
  write_csv("data-clean/global_gender_gap_index_2016_clean.csv")

readxl::read_xlsx("data-raw/happy-planet-index_2016_raw.xlsx", sheet = 2, skip = 4) %>%
  select(Country, `Happy Planet Index`) %>%
  write_csv("data-clean/happy-planet-index_2016_clean.csv")

readxl::read_xlsx("data-raw/human-freedom-index_2017_raw.xlsx", sheet = 2, skip = 5) %>%
  filter(Year == 2015) %>%
  select(Countries, `HUMAN FREEDOM (Score)`) %>%
  write_csv("data-clean/human-freedom-index_2017_clean.csv")

readxl::read_xls("data-raw/index-of-economic-freedom_2018_raw.xls") %>%
  select(`Country Name`, `2018 Score`) %>%
  write_csv("data-clean/index-of-economic-freedom_2018_clean.csv")

readxl::read_xlsx("data-raw/legatum-rosperity-index_2017_raw.xlsx", sheet = 2) %>%
  select(country, PI) %>%
  write_csv("data-clean/legatum-rosperity-index_2017_clean.csv")

readxl::read_xlsx("data-raw/social-progress-index_2017_raw.xlsx") %>%
  select(Country, `Social Progress Index`) %>%
  write_csv("data-clean/social-progress-index_2017_clean.csv")