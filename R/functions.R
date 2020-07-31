#### Function Skeleton ####

## Create a new book club repo
# prefixing with dot to hide from average book club user

.bc_create <- function(){}

# Download repository to a local folder

bc_download <- function(){}

# Ordinary weekly user functions

bc_claim_week <- function(){

  # check that there is an Rproj loaded (fa)
  # check that there is a .bookclub.yml file and create an environment object to store bookclubber vars
  # (so we know it's a book club structured thing), and a .git folder/repo
  # git2r::pull for freshest version
  # figure out which week they're claiming
  # find spot to add to README
  # git2r::push (to fork? automatically creating PR?)
  # message: waiting for approval!

}

bc_new_presentation <- function(){}

bc_submit_presentation <- function(){

  # commits to user/repo@presentation_week_cohort branch (ie not user's main branch)
  # pushes
  # creates PR via github api?

}

### INTERNAL ###

