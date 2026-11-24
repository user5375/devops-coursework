terraform {
  required_version = ">= 1.5.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "app_network" {
  name = "${var.container_name}-net"
}

resource "docker_image" "app_image" {
  name         = var.image_name
  keep_locally = true
}

resource "docker_container" "app" {
  name  = var.container_name
  image = docker_image.app_image.image_id

  networks_advanced {
    name = docker_network.app_network.name
  }

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  restart = "unless-stopped"
}