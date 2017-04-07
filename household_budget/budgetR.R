# budgetr.r
#
# script to automate categorization of VISA expenses


library(dplyr)
library(readr)

library(fuzzyjoin)


# -------------------------------------------------------------
# Step 1: read in files
#
# Read in TD VISA expenses, code to spending categories.

#read_csv("datafiles/accountactivity.csv", col_names = FALSE)

accountactivity <- read_csv("datafiles/accountactivity.csv", 
                            col_names = c("date", "vendor", "debit", "credit", "balance")
                            )

#accountactivity <- read_csv("datafiles/accountactivity (1).csv", 
#                            col_names = c("date", "vendor", "debit", "credit", "balance"))

# resolve NA values

accountactivity$debit[is.na(accountactivity$debit)] <- 0
accountactivity$credit[is.na(accountactivity$credit)] <- 0

# create single column with "amount"
# filter out payments to the VISA account

accountactivity <- accountactivity %>%
  mutate(amount = debit - credit) %>%
  filter(vendor != "SCOTIABANK PAYMENT")

ls.str(accountactivity)

# Read in vendor to category assignment file.

vendor_category <- read_csv("vendor-category.csv")


# -------------------------------------------------------------
# Step 2: match

accountactivity %>%
  fuzzyjoin::regex_inner_join(vendor_category, by = "vendor")

accountactivity %>%
  fuzzyjoin::regex_left_join(vendor_category, by = "vendor")

new_accountactivity <- accountactivity %>%
  fuzzyjoin::regex_left_join(vendor_category, by = "vendor")

# -------------------------------------------------------------
# Step 3: rearrange columns, save file


final_accountactivity <- new_accountactivity %>%
  select(category, date, vendor.x, amount)

write_csv(final_accountactivity, "final_accountactivty.csv")


# -------------------------------------------------------------

# more financial processing in R
# 
# mortgage calculator
# https://www.r-bloggers.com/mortgage-calculator-and-amortization-charts-with-r/

# empirical finance package
# https://cran.r-project.org/web/views/Finance.html

# simple amortization function
# https://www.r-bloggers.com/a-simple-amortization-function/


