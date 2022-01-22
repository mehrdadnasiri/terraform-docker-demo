resource "random_password" "mypass" {
  length           = var.mypass_len
}
resource "docker_image" "mysql" {
  name = "mysql:latest"
}

resource "docker_container" "mysql" {
  name  = "mysql"
  image = docker_image.mysql.latest
}