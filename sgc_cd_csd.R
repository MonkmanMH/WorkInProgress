# data wrangling: creating a new variable by subsetting an existing one
# - specifically, SGC to CD and CSD

# libraries
library(tidyverse)

# create sample data tables
df_sgc <- tribble(
  ~"sgc_num", ~"sgc_chr", ~"csd_name", ~"count",
  5915001, "5915001", "Langley", 151,
  5915002, "5915002", NA, 152,
  5915022, "5915022", "Vancouver", 4567,
  5917005, "5917005", "North Saanich", 111,
  5917021, "5917021", "Saanich", 222,
  5917034, "5917034", "Victoria", 333
)

# cd names for join
df_cd <- tribble(
  ~"cd", ~"cd_name",
  "5915", "Greater Vancouver",
  "5917", "Capital"
)

# create new column with CD values, pulled from "sgc_num" variable 
# this uses the package {stringr}
# https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html
# note that this returns a character variable, even though the source is numeric
df_sgc <-
  df_sgc %>% 
  mutate(cd = str_sub(sgc_num, 1, 4))

# now join to include CD names
df_sgc <- df_sgc %>% 
  left_join(df_cd, by = "cd")
df_sgc

# fill in the gaps
# uses `case_when()` from {dplyr} package
# https://dplyr.tidyverse.org/reference/case_when.html
# this is a conditional, linear process -- 
#   it finds all the cases where the first condition is true, then the 2nd, etc 
#   and then assigns the leftovers a value 
#   in this case, pulls from the "csd_name" variable but it is often an
#   NA or a value from another variable

df_sgc <- df_sgc %>% 
  mutate(csd_name_final = case_when(
    sgc_chr == "5915001" ~ "Langley (DM)",
    sgc_chr == "5915002" ~ "Langley (City)",
    # all the rest...
    TRUE ~ csd_name
  ))

df_sgc

# and summarize
df_sgc_summary <- df_sgc %>% 
  group_by(cd_name) %>% 
  summarize(cd_total = sum(count))
df_sgc_summary  

  