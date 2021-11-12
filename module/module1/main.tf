
variable "reponame1" {
  type = string
  description = "This is for demo of string variable"
}

resource "github_repository" "example3" {
  name        = "${var.reponame1}"
  description = "My awesome codebase"
  }