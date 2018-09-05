# token variable
variable "github_token" {
  description = "github token"
}

# repo
variable "repo" {
  description = "repo"
  default     = "example"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "DarkMagics"
}

resource "github_repository" "example" {
  name        = "${var.repo}"
  description = "My awesome ghrepo"
}

#resource "random_pet" "repo" {
 # length    = "4"
  #separator = "-"
#}

#resource "github_repository" "example2" {
 # name        = "${random_pet.repo.id}"
  #description = "My awesome pet project"
#}
