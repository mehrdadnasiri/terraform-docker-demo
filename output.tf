output "mypass" {
  value       = random_password.mypass.result
  sensitive   = true
}
output "mycontent" {
  value       = data.local_file.myfile.content
}

output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.mysql.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.mysql.id
}