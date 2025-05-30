# header ------------------------------------------------------------------

# This script accesses the tables stored as Google Sheets which contain
# the course data. Each table is read and stored locally as a CSV.

# library -------------------------------------------------------------------

library(googlesheets4)
library(readr)
library(dplyr)

# script ------------------------------------------------------------------

## course schedule

link_course_schedule <- "https://docs.google.com/spreadsheets/d/1xEBWgVJzLu1YtgtE6V36FOXbexsF5Jjp-U1koie19yk/edit?gid=0#gid=0"

googlesheets4::read_sheet(link_course_schedule) |> 
  mutate(title = case_when(
    is.na(page_link) == FALSE ~  paste0("[", title, "](", page_link, ")"),
    TRUE ~ title
  )) |> 
  write_csv(here::here("data/tbl-01-course-schedule.csv"))

# learning objectives ------------------------------------------------------

link_learning_objectives <- "https://docs.google.com/spreadsheets/d/15LB7cT-T4_Oiqdk3m8QMkgv_D_yLENkEX0IiYddRCF0/edit?gid=0#gid=0"

googlesheets4::read_sheet(link_learning_objectives) |> 
  write_csv(here::here("data/tbl-02-learning-objectives.csv"))

# grading scheme ----------------------------------------------------------

link_grading_scheme <- "https://docs.google.com/spreadsheets/d/1uwslpXXAaWOM1Lg3t47SLPbMWCHgPtYhNSnH7O5BlY8/edit?gid=0#gid=0"

googlesheets4::read_sheet(link_grading_scheme) |> 
  write_csv(here::here("data/tbl-03-grading-scheme.csv"))

# capstone project grading ---------------------------------------------

link_capstone_project_grading <- "https://docs.google.com/spreadsheets/d/1F35u_rdg9_nqkDdIZf2Kww1nYtyTNPGdMyg8gUmajYc/edit?gid=0#gid=0"

googlesheets4::read_sheet(link_capstone_project_grading) |> 
  write_csv(here::here("data/tbl-04-capstone-project-grading.csv"))


