/* provider "github" {
  token = "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"
}

resource "github_repository" "terraform-github-file" {
  name        = "firstfile"
  description = "first github file using terraform github"
  visibility = "public"
  auto_init  = true
}

resource "github_repository" "terraform-second-repo" {
  name        = "second file"
  description = "second github file using terraform github"
  visibility = "public"
  auto_init  = true
}

*/

module "webserver" {
  source        = "./module/webserver"
  image_id      = var.image_id
  instance_type = var.instance_type
  key           = file("${path.module}/id_rsa.pub")
  key_name      = var.key_name
}

output "mypublicIp" {
  value = module.webserver.publicIP
}