variable "container_name" {
  description = "terraform-welcome-app"
  type        = string
  default     = "devops-coursework-app"
}

variable "image_name" {
  description = "docker/welcome-to-docker:latest"
  type        = string
  default = "docker/welcome-to-docker:latest"
}

variable "external_port" {
  description = "8089"
  type        = number
  default     = 8080
}

variable "internal_port" {
  description = "80"
  type        = number
  default     = 8000
}