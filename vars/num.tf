variable "numofusers" {
  type = number
  description = "This is for demo of number variable"
  default = 3
}

resource "github_repository" "example1" {
  count = "${var.numofusers}" 
  name        = "rajesh444.${count.index}"
  description = "This is my terraform demo"

  visibility = "public"

}