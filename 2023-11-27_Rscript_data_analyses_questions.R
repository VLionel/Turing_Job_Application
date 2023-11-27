# -------- Package requirements/load -----------
library(readr)
library(usethis)
library(gitcreds)

# -------- Version control --------
use_git_config(user.name = "vlionel", user.email = "vinynegrelli@gmail.com")
gitcreds_set()
use_git()

# -------- Data import ------------
data_source = "/home/vlm/HDD-1TB/Job_Applications/Turing_Job_Application/data"

# cardio_alco
cardio_alco <- read_delim("data/cardio_alco.csv", 
                          delim = ";", escape_double = FALSE, locale = locale(), 
                          trim_ws = TRUE)
View(cardio_alco)
summary(cardio_alco)
# cardio_base
### Example on how to reprocess the factor variable, if needed
# Add labels to the "gender" column
# data$gender <- factor(data$gender, levels = c(1, 2), 
# labels = c("Male", "Female"))
cardio_base <- read_csv("data/cardio_base.csv", 
                        col_types = cols(age = col_double(), 
                                         gender = col_factor(
                                           levels = c("1", "2"))))
View(cardio_base) 
# covid_data
covid_data <- read_csv("data/covid_data.csv", 
                       col_types = cols(date = col_date(format = "%Y-%m-%d")))
View(covid_data)
# ---------