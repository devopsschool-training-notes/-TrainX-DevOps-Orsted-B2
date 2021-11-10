resource "azuredevops_project" "project" {
  name               = "gitrepo-raj2"
  visibility         = "private"
  version_control    = "Git"
  description		 = "This is my terraform demo"
  work_item_template = "Agile"
}

