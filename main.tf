terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx_container" {
  image = docker_image.nginx.image_id
  name  = "my-nginx"
  ports {
    internal = 80
    external = 8080
  }
}

