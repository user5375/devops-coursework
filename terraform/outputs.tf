output "app_url" {
  description = "http://localhost:8088/"
  value       = "http://localhost:${var.external_port}"
}

output "container_id" {
  description = "af12c9b35fcdc078b6b74641b8da6765a238a2f76772f5e98ba5d96d90495910"
  value       = docker_container.app.id
}