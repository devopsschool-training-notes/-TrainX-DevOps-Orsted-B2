variable "create_vm" {
  description = "If set to true, it will create vm"
   type   = bool
}

resource "github_repository" "example6" {
  count   = var.create_vm ? 1 : 0
  name        = "this-for-bool"
  description = "My awesome codebase"
}