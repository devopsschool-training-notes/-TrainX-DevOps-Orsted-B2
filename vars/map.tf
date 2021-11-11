
variable "account_name" {
   type = map
  default = {
      "india" = "india"
      "europe" = "europe"
      "usa" = "usa"
}
}


resource "github_repository" "repo5" {
  for_each = var.account_name
  name = "${each.value}-iam"
  description = "My awesome codebase"
  visibility = "public"
}