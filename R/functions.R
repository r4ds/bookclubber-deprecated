### Function Skeletons

clone_bookclub <- function(repo = NULL, path = NULL){

  #

}



claim_week <- function(repo = NULL, week = NULL){
  # check that there is an Rproj loaded
  # check that there is a .bookclub.yml file and create an environment object to store bookclubber vars
  # (so we know it's a book club structured thing), and a .git folder/repo
  # git2r::pull for freshest version
  # figure out which week they're claiming
  # find spot to add to README
  # git2r::push (to fork? automatically creating PR?)
  # message: waiting for approval!
}

.check_rproj_loaded <- function(){

}

.check_bookclub_yml <- function(){

}

.pull_latest <- function(){

}

.create_pr <- function(){

}
