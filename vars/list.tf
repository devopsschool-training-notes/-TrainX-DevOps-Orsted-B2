variable "gitrepos" {
    type    = list
    default = ["devopsschoolx-1", "devopsschooly-2", "devopsschoolz-3"]
    description = "This is for demo of list variable"
}

resource "github_repository" "repo1" {
  name = "${var.gitrepos[0]}"
  description = "My awesome codebase"
  visibility = "public"
}

resource "github_repository" "repo2" {
  name = "${var.gitrepos[1]}"
  description = "My awesome codebase"
  visibility = "public"
}

resource "github_repository" "repo3" {
  name = "${var.gitrepos[2]}"
  description = "My awesome codebase"
  visibility = "public"
}