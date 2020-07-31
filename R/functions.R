#### Function Skeleton ####

## Create a new book club repo
# prefixing with dot to hide from average book club user

.bc_create <- function(path = NULL,
                       rstudio = rstudioapi::isAvailable(),
                       open = rlang::is_interactive()){



  # Usage and feel should be a lot like usethis::create_project

  # Actually, can just be a wrapper on usethis::create_project?

  # Stepping through usethis::create_project package below:

  path <- fs::path_expand(path)
  name <- fs::path_file(fs::path_abs(path))
  usethis::check_not_nested(fs::path_dir(path), name)

  usethis::create_directory(path)
  old_project <- usethis::proj_set(path, force = TRUE)
  on.exit(usethis::proj_set(old_project), add = TRUE)

  usethis::use_directory("R")

  if (rstudio) {
    usethis::use_rstudio()
  } else {
    usethis::ui_done("Writing a sentinel file {ui_path('.here')}")
    usethis::ui_todo("Build robust paths within your project via {ui_code('here::here()')}")
    usethis::ui_todo("Learn more at <https://here.r-lib.org>")
    fs::file_create(usethis::proj_path(".here"))
  }

  #### INSERT CODE TO COPY THE TEMPLATE REPO INTO THE EXISTING WORKING DIRECTORY HERE

  #### INIT GITHUB REPO

  usethis::use_github()

  #### Open Project

  if (open) {
    if (usethis::proj_activate(usethis::proj_get())) {
      # working directory/active project already set; clear the on.exit()'s
      on.exit()
    }
  }

  invisible(usethis::proj_get())

}

# Download repository to a local folder

bc_download <- function(repo, path = NULL,...){

  # use happygitwithr recommended "fork and clone" structure by using usethis::create_from_github

  if(github_token()=="")(stop("No GitHub token found! Please run `usethis::create_github_token()`"))

  usethis::create_from_github(repo_spec = repo,destdir = path,fork = TRUE,...)

}

# Ordinary weekly user functions

bc_claim_week <- function(){

  # check that there is an Rproj loaded (fa)
  # check that there is a .bookclub.yml file (so we know it's a book club structured thing), and a .git folder/repo
  # git2r::pull for freshest version
  # figure out which week they're claiming
  # find spot to add to README
  # git2r::push (to fork? automatically creating PR?)
  # message: waiting for approval!

}

bc_presentation_new <- function(){}

bc_presentation_submit <- function(){

  # commits to user/repo@presentation_week_cohort branch (ie not user's main branch)
  # pushes
  # creates PR via github api?

}

### INTERNAL ###

# (For internal code not liberally taken from usethis)

