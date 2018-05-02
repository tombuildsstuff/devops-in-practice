# NOTE: neither of these URL's exist - and it's **strongly recommended** to use Module Versioning (e.g. Git Tags)

module "from-a-git-repo" {
  source   = "github.com/my-org/azurerm-resource-group"
  prefix   = "devopsinpractice"
  location = "UK South"
}

module "from-a-sub-directory" {
  source   = "github.com/my-org/azurerm-resource-group//some-directory"
  prefix   = "devopsinpractice"
  location = "UK South"
}
